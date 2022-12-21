import java.io.IOException;

public class JuPyJavaPlanner {

    public static void main(String[] args) throws IOException {        

       Process process = new ProcessBuilder().command( "python-jl", "Planner.py" ).inheritIO().start();
       System.out.println("\n-------- Start JuPyJava --------\n");
       int timestamp = (int) (System.currentTimeMillis());
       while (process.isAlive()){}
       int timestamp2 = (int) (System.currentTimeMillis());
       System.out.println("\n-------- End JuPyJava ----------\n");
        
       int timing = timestamp2-timestamp;

       System.out.println("Elapsed time: " + timing/1000.0 + " seconds");
    }
}

