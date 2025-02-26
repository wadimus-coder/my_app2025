#include <curses.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>
// #include <windows.h>

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

int battle(int colms, char (*map)[colms], int dir_y, int dir_x)
{
    for (int m = 0; m < 10; m++)
    {
        if (dir_y == monster[m].y && dir_x == monster[m].x)
        {
            if (monster[m].hp <= 0)
            {
                map[dir_y][dir_x] = ' ';
                p_gold += rand() % 10 + 1;
            }
            else
                monster[m].hp -= 1;

            break;
        }
    }
    return 0;
}
int p_action(int c, int colms, char (*map)[colms])
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
    else if (c == '>' && map[py][px] == '>')
    {
        t_placed = 0;
        p_placed = 0;
        r_placed = 0;
        return 1;
    }

    if (map[dir_y][dir_x] == ' ' || map[dir_y][dir_x] == '>')
    {
        py = dir_y;
        px = dir_x;
    }
    else if (map[dir_y][dir_x] == 't')
    {
        battle(colms, map, dir_y, dir_x);
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

        // sraircase gen
        int sy, sx;
        do

        {
            sy = rand() % rows;
            sx = rand() % colms;
        }

        while (map[sy][sx] != ' ');
        map[sy][sx] = '>';
    }
    return 0;
}
int respawn_creatures(int rows, int colms, char (*map)[colms])
{

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

    if (!p_placed) // генерация игрока
    {
        do
        {
            py = rand() % rows;
            px = rand() % colms;
        }

        while (map[py][px] == '#' || map[py][px] == '%');
        p_placed = 1;
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
            else if (map[y][x] == '>')
                mvaddch(y, x, '>');
            else if (map[y][x] == '%')
                mvaddch(y, x, '%');
            else if (map[y][x] == ' ')
                mvaddch(y, x, ' ');

            else
                mvaddch(y, x, '#');
        }
    }
    mvprintw(rows, 0, "Gold : %d", p_gold);
    return 0;
}

int game_loop(int rows, int colms, char (*map)[colms])
{
    int c;
    int new_lvl;
    int dlvl = 1;
    srand(time(NULL));

    dungeon_gen(rows, colms, map);
    respawn_creatures(rows, colms, map);

    if (c != 0)
    {
        new_lvl = p_action(c, colms, map); //+ battle()
    }

    dungeon_draw(rows, colms, map);

    mvaddch(py, px, '@'); // draw p

    if (new_lvl)
    {
        // system("cls");
        // clear();
        mvprintw(rows, 0, "Welcome to level %d", ++dlvl);
    }

    c = getch();

    return c;
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
        c = game_loop(rows - 1, colms - 1, map);
        // rows-1 cause map[][] 0...119

    }

    while (c != 27);

    endwin(); // окончание curses

    getch();
    getch();

    return 0;
}