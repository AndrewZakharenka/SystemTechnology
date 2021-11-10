package task1;

public class Parent {
    protected StringBuilder fio;

    public Parent() {
        this.fio = new StringBuilder("анна мария оглы");
    }
    public void print(){
        this.fio.append("!");
        System.out.println(this.fio);
    }
    public StringBuilder getFio() {
        return fio;
    }

    public void setFio(StringBuilder fio) {
        this.fio = fio;
    }
}
