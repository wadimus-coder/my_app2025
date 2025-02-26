#include <curses.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// global data

// int ty; // goblin's coords
// int tx;
int py; // player's coords
int px;

int p_gold = 0;
bool t_placed = 0; // flags
bool p_placed = 0;
int r_placed = 0;

struct Monsters
{
    int y;
    int x;
    int hp;
};

struct Monsters monster[10];

int battle(int c, int rows, int colms, char (*map)[colms], int dir_y, int dir_x)
{
    for (int m = 0; m < 10; m++)
    {
        if (dir_y == monster[m].y && dir_x == monster[m].x)
        {
            if (monster[m].hp <= 0)
                map[dir_y][dir_x] = ' ';
            else
                monster[m].hp -= 1;

            p_gold += rand() % 10 + 1;
            break;
        }
    }
    return 0;
}
int dungeon_gen(int rows, int colms, char (*map)[colms])
{
    // генерируем комнаты
    if (!r_placed)

    {
        int ry; // room's coords
        int rx;
        int r_size_y; // room's size
        int r_size_x;
        int r_center_y;
        int r_center_x;
        int r_old_center_y;
        int r_old_center_x;
        int room_num = rand() % 5 + 5; // number of rooms
        bool collision;

        // fill dungeon  with boders and  walls
        for (int y = 0; y <= rows; y++)
        {
            for (int x = 0; x <= colms; x++)
            {
                // boders
                if (y == 0 || y == rows - 1 ||
                    x == 0 || x == colms || y == rows)

                    map[y][x] = '%';
                // walls
                else
                    map[y][x] = '#';
            }
        }

        while (r_placed < room_num)
        {
            int try_counter = 0; // number of ties for prototyping
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

                try_counter++;

                if (try_counter > 100)
                {
                    ry = rx = 3;
                    r_size_y = r_size_x = 3;

                    break; //..выход из текущего цикла
                }

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

            // corridors

            if (r_placed > 1)
            {
                r_old_center_y = r_center_y;
                r_old_center_x = r_center_x;
            }

            r_center_y = ry + (r_size_y / 2);
            r_center_x = rx + (r_size_x / 2);

            if (r_placed > 1)
            {
                int path_y;
                for (path_y = r_old_center_y; path_y != r_center_y;)
                {
                    map[path_y][r_old_center_x] = ' ';
                    if (r_old_center_y < r_center_y)
                        path_y++;
                    else
                        path_y--;
                }

                for (int x = r_old_center_x; x != r_center_x;)
                {
                    map[path_y][x] = ' ';
                    if (r_old_center_x < r_center_x)
                        x++;
                    else
                        x--;
                }
            }
        }
    }
    return 0;
}
int dungeon_draw(int rows, int colms, char (*map)[colms])
{

    for (int y = 0; y <= rows; y++)
    {
        for (int x = 0; x <= colms; x++)
        {

            if (y == rows)
                mvaddch(y, x, ' ');
            else if (map[y][x] == 't')
                mvaddch(y, x, 't');
            else if (map[y][x] == '%')
                mvaddch(y, x, '%');
            else if (map[y][x] == ' ')
                mvaddch(y, x, ' ');

            else
                mvaddch(y, x, '#');
        }
    }
    return 0;
}

int game_loop(int c, int rows, int colms, char (*map)[colms])
{

    srand(time(NULL));

    dungeon_gen(rows, colms, map);

    if (c != 0)
    {
        int dir_y = py, dir_x = px;

        if (c == KEY_UP)
            dir_y--;
        else if (c == KEY_DOWN)
            dir_y++;
        else if (c == KEY_LEFT)
            dir_x--;
        else if (c == KEY_RIGHT)
            dir_x++;

        if (map[dir_y][dir_x] == ' ')
        {
            py = dir_y;
            px = dir_x;
        }
        else if (map[dir_y][dir_x] == 't')
            battle(c, rows, colms, map, dir_y, dir_x);
    }

    if (!t_placed) // генерация гоблина
    {
        int my, mx;

        for (int m = 0; m < 10; m++)
        {
            do
            {
                my = rand() % rows;
                mx = rand() % colms;
            }

            while (map[my][mx] != ' ');

            monster[m].y = my;
            monster[m].x = mx;
            monster[m].hp = 2;
            map[monster[m].y][monster[m].x] = 't';
        }

        t_placed = 1;
    }

    // function dungeon_draw();
    dungeon_draw(rows, colms, map);

    if (!p_placed) // генерация игрока
        do
        {
            py = rand() % rows;
            px = rand() % colms;
        }

        while (map[py][px] == '#' || map[py][px] == '%');
    p_placed = 1;

    /*  // наезд на гоблина
      if (py == ty && px == tx)
      {
          t_placed = 0;
          // r_placed = 0;
          // p_placed = 0;
          p_gold += rand() % 10 + 1;
      }
      */

    // mvaddch(ty, tx, 't');
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
        game_loop(c, rows - 1, colms - 1, map);

        // printw("map[0][0]-----%c----", map[0][0]);

    }

    while ((c = getch()) != 27);

    endwin(); // окончание curses

    getch();
    getch();

    return 0;
}