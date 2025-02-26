#include <curses.h>

int main()
{
    int c; // input
    int y = 10;
    int x = 12;
    int rows;
    int colms;

    initscr();            // начало curses
    keypad(stdscr, TRUE); // allow arrows
    noecho();             // don't display input
    curs_set(0);          // hide cursor
    getmaxyx(stdscr, rows, colms);
    char map[30][90];
    do
    {
        // clear();
        for (int yy = 0; yy <= rows; yy++)
        {
            for (int xx = 0; xx <= colms; xx++)
            {
                map[yy][xx] = '#';
                mvaddch(yy, xx, '#');
            }
        }
        for (int yy = 7; yy <= rows / 2; yy++)
        {
            for (int xx = 7; xx <= colms / 2; xx++)
            {
                map[yy][xx] = ' ';
                mvaddch(yy, xx, ' ');
            }
        }
        // printw("map[0][0]-----%c----", map[0][0]);

        if (c == KEY_UP && map[y - 1][x] == ' ')
            y--;
        else if (c == KEY_DOWN && map[y + 1][x] == ' ')
            y++;
        else if (c == KEY_LEFT && map[y][x - 1] == ' ')
            x--;
        else if (c == KEY_RIGHT && map[y][x + 1] == ' ')
            x++;

        mvaddch(y, x, '@'); // print cursor

    }

    while ((c = getch()) != 27);

    endwin(); // окончание curses

    getch();
    getch();

    return 0;
}