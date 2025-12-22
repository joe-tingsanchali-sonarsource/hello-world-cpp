#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!", "And CLion too!"};

    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    int scores[3] = {90, 85, 70};

    // SonarQube will flag this: The array only has indices 0, 1, and 2.
    // Index 3 is "Out of Bounds".
    scores[3] = 100; 

    std::cout << scores[3] << std::endl;
    return 0;
}
