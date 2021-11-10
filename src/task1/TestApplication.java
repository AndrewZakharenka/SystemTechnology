package task1;
/*
* Я вынес отдельно классы, а не делал их внутренними, для того, чтобы не делать их Static, так как не видел в этом
* смысла.*/
public class TestApplication {

    public static void main(String[] args) {
        Parent parent = new Parent();
        parent.print();
        Parent child = new Child();
        child.print();
    }
}
