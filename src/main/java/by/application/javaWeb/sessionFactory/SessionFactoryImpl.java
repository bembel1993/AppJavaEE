package by.application.javaWeb.sessionFactory;

import by.application.javaWeb.model.message.Message;
import by.application.javaWeb.model.person.Person;
import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.model.person.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class SessionFactoryImpl {
    private static SessionFactory sessionFactory;

    private SessionFactoryImpl() {}

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration().configure();
                configuration.addAnnotatedClass(Person.class);
                configuration.addAnnotatedClass(User.class);
                configuration.addAnnotatedClass(Product.class);
                configuration.addAnnotatedClass(Message.class);
              //  configuration.addAnnotatedClass(FileEntity.class);
                StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
                sessionFactory = configuration.buildSessionFactory(builder.build());

            } catch (Exception e) {
                System.out.println("Exception!" + e);
            }
        }
        return sessionFactory;
    }
}
