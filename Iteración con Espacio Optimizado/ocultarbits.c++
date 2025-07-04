#include <iostream>
#include <fstream>
#include <vector>
#include <bitset>

using namespace std;

void ocultar(vector<unsigned char>& image, const string& mensaje, int offset){
    string mensajeBin;
    for (char c: mensaje){
        mensajeBin += bitset<8>(c).to_string();
    }
    mensajeBin+= "00000000";
    int bitIndice=0;
    for(size_t i= offset; i < image.size() && bitIndice < mensajeBin.size(); ++i){
        image[i] &=0xFE;
        image[i] |= (mensajeBin[bitIndice] - '0');
        bitIndice++;
    }
    if (bitIndice <mensajeBin.size()){
        cerr << "Imagen demasiado pequeña para el mensaje" << endl;
    }else{
        cout << "Mensaje ocultado correctamente" << endl;
    }
        
}
int main (){
    string rutaE= "input.bmp";
    string rutaS= "output.bmp";
    string mensaje="Hola Carla";
    ifstream imagenE(rutaE, ios::binary);
    if(!imagenE){
        cerr << "No se pudo abrir la imagen de entrada." << endl;
        return 1;
    }
    vector<unsigned char> header(54);
    imagenE.read(reinterpret_cast<char*>(header.data()), header.size());
    vector<unsigned char> data((istreambuf_iterator<char>(imagenE)), {});
    imagenE.close();
    ocultar(data, mensaje, 0);
    ofstream imagenSalida(rutaS, ios::binary);
    imagenSalida.write(reinterpret_cast<char*>(header.data()), header.size());
    imagenSalida.write(reinterpret_cast<char*>(data.data()), data.size());
    imagenSalida.close();
    cout << "Imagen modificada guardada como" << rutaS << endl;
    return 0;
}