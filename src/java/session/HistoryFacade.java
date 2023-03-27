

package session;

import entity.Book;
import entity.History;
import entity.Reader;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class HistoryFacade extends AbstractFacade<History> {

    @PersistenceContext(unitName = "SPTV21WebLibraryPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HistoryFacade() {
        super(History.class);
    }

    public List<History> getHistoriesWithTakedBooks() {
        try {
            return em.createQuery("SELECT h FROM History h WHERE h.returnBook = null")
                    .getResultList();
        } catch (Exception e) {
            return new ArrayList<>();
        }
    }

    public List<Book> getReadingBook(Reader reader) {
        try {
            return em.createQuery("SELECT h.book FROM History h WHERE h.returnBook = null AND h.reader = :reader")
                    .setParameter("reader", reader)
                    .getResultList();
        } catch (Exception e) {
            return new ArrayList<>();
        }
    }

}
