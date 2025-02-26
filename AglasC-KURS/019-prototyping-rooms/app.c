#include <curses.h>
#include <stdlib.h>
#include <time.h>

#include <stdbool.h>

// global data

int ty; // goblin's coords
int tx;
int py; // player's coords
int px;

int p_gold = 0;
bool t_placed = 0; // flags
bool p_placed = 0;
int r_placed = 0;

int dungeon(int c, int rows, int colms, char (*map)[colms])
{
    bool collision;

    srand(time(NULL));
    // генерируем комнаты
    if (!r_placed)

    {
        int ry; // room's coords
        int rx;
        int r_size_y; // room's size
        int r_size_x;
        int room_num = rand() % 7 + 7; // number of rooms

        // fill dungeon  with boders and  walls
        for (int y = 0; y <= rows; y++)
        {
            for (int x = 0; x <= colms; x++)
            {
                // boders
                if (y == 0 || y == rows - 1 || x == 0 || x == colms || y == rows)

                    map[y][x] = '%';
                // walls
                else
                    map[y][x] = '#';
            }
        }

        do
        {
            // prototyping the room until no collisions
            do
            {
                collision = 0;
                //  room coords
                ry = rand() % (rows - 3) + 1;
                rx = rand() % (colms - 3) + 1;

                //  room sizes
                r_size_y = rand() % 5 + 5;
                r_size_x = rand() % 10 + 8;

                // fill DB map with rooms
                for (int y = ry; y <= ry + r_size_y; y++)
                {
                    for (int x = rx; x <= rx + r_size_x; x++)
                    {
                        if (map[y][x] == '%' || map[y][x] == ' ' ||
                            map[y + 2][x] == ' ' || map[y - 2][x] == ' ' ||
                            map[y][x + 2] == ' ' || map[y][x - 2] == ' ')

                        {
                            collision = 1;
                            y = ry + r_size_y; // выход из вернего цикла
                            break;             //..выход из текущего цикла
                        }
                    }
                }
            }

            while (collision == 1);

            // fill DB map with rooms
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

                        map[y][x] = ' ';
                }
            }
            r_placed++;
        }

        while (r_placed < room_num);
    }

    // draw the dungeon
    for (int y = 0; y <= rows; y++)
    {
        for (int x = 0; x <= colms; x++)
        {

            if (y == rows)
                mvaddch(y, x, ' ');
            else if (map[y][x] == '%')
                mvaddch(y, x, '%');
            else if (map[y][x] == ' ')
                mvaddch(y, x, ' ');

            else
                mvaddch(y, x, '#');
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
        // r_placed = 0;
        // p_placed = 0;
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