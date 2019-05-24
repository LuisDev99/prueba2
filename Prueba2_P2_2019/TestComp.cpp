#include <iostream>
#include <verilated.h>
#include "VComp.h"

using namespace std;

int main(){

    VComp mod;

    for(int i = 0; i <= 256; i++){
        for(int j = 0; j <= 256; j++){

            mod.x = i;
            mod.y = j;
            mod.eval();
            
            bool esMayor = false;

            if(  i > j ){
                esMayor = mod.mayorQue == 1;
            } else {
                esMayor = mod.mayorQue == 0;
            }

            bool comp = i > j;

            if ( comp != esMayor )
                cout << "Test Passed" << i << " > " << j << " = " << esMayor << endl;

        

        }
    }



    mod.final();

}