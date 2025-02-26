#include <curses.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// global vars
// char map[30][90];
int px;
int py; // coords of the wools
int ty;
int tx; // coords of goblin
bool t_placed = 0;
bool p_placed = 0;
int p_gold = 0;

// dungeon()
int dungeon(int c, int rows, int colms, char (*map)[colms])

{
    srand(time(NULL));

    for (int y = 0; y <= rows; y++)
    {
        for (int x = 0; x <= colms; x++)
        {
            map[y][x] = '#'; // 0-->119
            mvaddch(y, x, '#');
        }
    }
    for (int y = 7; y <= rows / 2; y++)
    {
        for (int x = 7; x <= colms / 2; x++)
        {
            map[y][x] = ' ';
            mvaddch(y, x, ' ');
        }
    }
    // movement

    if (c == KEY_UP && map[py - 1][px] == ' ')
        py--;
    else if (c == KEY_DOWN && map[py + 1][px] == ' ')
        py++;
    else if (c == KEY_LEFT && map[py][px - 1] == ' ')
        px--;
    else if (c == KEY_RIGHT && map[py][px + 1] == ' ')
        px++;

    if (!t_placed)
    {
        do
        {
            ty = rand() % rows;
            tx = rand() % colms;
        } while (map[ty][tx] == '#');
        t_placed = 1;
    }

    if (!p_placed)
    {
        do
        {
            py = rand() % rows;
            px = rand() % colms;
        } while (map[py][px] == '#');
        p_placed = 1;
    }

    if (py == ty && px == tx)
    {
        t_placed = 0;
        p_gold += rand() % 10 + 1;
    }

    mvaddch(ty, tx, 't'); // place of goblin
    mvaddch(py, px, '@'); // print cursor
    mvprintw(rows, 0, "Gold : %d", p_gold);
    return 0;
}

// main()
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

    char map[rows][colms]; // 0-->119 0-->23

    do
    {

        dungeon(c, rows - 1, colms - 1, map); // 0-->119 0-->23

    }

    while ((c = getch()) != 27);

    endwin(); // окончание curses

    getch();
    getch();

    return 0;
}