//File Name - MidTerm Test [Mail Pilot game]
//Author's Name - Poojan Jitendrakumar Patel
//Student Id - 301228811
//Date - 05/03/2022
//Description - Updating game to run in landscape mode
//Github link: https://github.com/Poojan26/MAPD-724-W2022-MidTerm-301228811.git

protocol GameProtocol
{
    // Keep objects inside the screen
    func CheckBounds()
    
    // Reset GameObject offscreen
    func Reset()
    
    // Initialize properties of GameObject
    func Start()
    
    // Update will be called every frame
    func Update()
}
