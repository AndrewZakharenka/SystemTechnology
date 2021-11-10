package task1;

public class Child extends Parent {
    public Child() {
        super.fio = new StringBuilder("АН'НА-МАРИЯ оглы");
    }

    public void print() {
        char[] ch = new char[fio.length()];
        fio.getChars(0, fio.length(), ch, 0);
        fio = new StringBuilder();

        if (!(ch[0] == ' ' || ch[0] == 39 || ch[0] == '-')) {
            fio.append(String.valueOf(ch[0]).toUpperCase());
        }

        for (int i = 1; i < ch.length; i++) {
            if ((ch[i - 1] == ' ' || ch[i - 1] == 39 || ch[i - 1] == '-')) {
                fio.append(String.valueOf(ch[i]).toUpperCase());
            } else {
                fio.append(String.valueOf(ch[i]).toLowerCase());
            }
        }

        System.out.println(fio);
    }
}
