#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int myCFunction(lua_State* L)
{
    const char *arg = luaL_checkstring(L, -1);
    lua_pushstring(L, "Hello from C");
    return 1;
}

int main(int argc, char *argv[])
{
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);

    lua_pushcfunction(L, myCFunction);
    lua_setglobal(L, "myCFunction" );

    const char* luaCode =
            "local messageToC = 'Hello From Lua'"
            "local answerFromC = myCFunction(messageToC)"
            "print('C says: '..answerFromC)";

    luaL_dostring(L, luaCode);

    lua_close(L);
    return 0;
}
