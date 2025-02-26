#include <curses.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// global data

int ty; // goblin's coords
int tx;
int py; // player's coords
int px;
int ry; // room's coords
int rx;
int r_size_y;
int r_size_x;
int p_gold = 0;
bool t_placed = 0; // flags
bool p_placed = 0;
bool r_placed = 0;

int dungeon(int c, int rows, int colms, char (*map)[colms])
{
    srand(time(NULL));
    // генерируем комнаты
    if (!r_placed)

    {
        ry = rand() % (rows - 3) + 1;
        rx = rand() % (colms - 3) + 1;

        r_size_y = rand() % 5 + 5;
        r_size_x = rand() % 10 + 8;

        r_placed = 1;
    }

    // строим стены
    for (int y = 0; y <= rows; y++)
    {
        for (int x = 0; x <= colms; x++)
        {

            if (y == 0 || y == rows || x == 0 || x == colms)
            {
                map[y][x] = '%';
                mvaddch(y, x, '%');
            }
            else
            {

                map[y][x] = '#';
                mvaddch(y, x, '#');
            }
        }
    }

    for (int y = ry; y <= ry + r_size_y; y++)
    {
        for (int x = rx; x <= rx + r_size_x; x++)
        {
            if (map[y][x] == '%')
            {
                y = ry + r_size_y; // выход из вернего цикла
                break;             //..выход из текущего цикла
            }
            else
            {
                map[y][x] = ' ';
                mvaddch(y, x, ' ');
            }
        }
    }

    if (c == KEY_UP && map[py - 1][px] == ' ')
        py--;
    else if (c == KEY_DOWN && map[py + 1][px] == ' ')
        py++;
    else if (c == KEY_LEFT && map[py][px - 1] == ' ')
        px--;
    else if (c == KEY_RIGHT && map[py][px + 1] == ' ')
        px++;

    if (!t_placed) // генерация гоблина
        do
        {
            ty = rand() % rows;
            tx = rand() % colms;
        }

        while (map[ty][tx] == '#' || map[ty][tx] == '%');
    t_placed = 1;

    if (!p_placed) // генерация игрока
        do
        {
            py = rand() % rows;
            px = rand() % colms;
        }

        while (map[py][px] == '#' || map[py][px] == '%');
    p_placed = 1;
    // наезд на гоблина

    if (py == ty && px == tx)
    {

        t_placed = 0;
        r_placed = 0;
        p_placed = 0;
        p_gold += rand() % 10 + 1;
    }

    mvaddch(ty, tx, 't');
    mvaddch(py, px, '@'); // print cursor
    mvprintw(rows, 0, "Gold : %d", p_gold);
    return 0;
}

int main()
{
    int c = 0; // input

    int rows;
    int colms;

    initscr();            // начало curses
    keypad(stdscr, TRUE); // allow arrows
    noecho();             // don't display input
    curs_set(0);          // hide cursor
    getmaxyx(stdscr, rows, colms);
    char map[rows][colms];
    do
    {
        dungeon(c, rows - 1, colms - 1, map);

        // printw("map[0][0]-----%c----", map[0][0]);

    }

    while ((c = getch()) != 27);

    endwin(); // окончание curses

    getch();
    getch();

    return 0;
}