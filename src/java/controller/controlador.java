
package controller;

import Config.Conexion;
import Entidad.Persona;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controlador {
    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView(); 
    int id;
    List datos;
 @RequestMapping("index.htm")   
    public ModelAndView Listar(){
        String sql="select * from persona";
        List datos = JdbcTemplate.queryForList(sql);
        mav.addObject("Lista",datos);
        mav.setViewName("index");
        return mav;
    }
    //Metodo para agregar
    @RequestMapping(value="agregar.htm",method=RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }
    @RequestMapping(value="agregar.htm",method=RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql="insert into persona(id,nombre,correo,nacionalidad) values(null,?,?,?)";
        this.JdbcTemplate.update(sql,p.getNombre(),p.getCorreo(),p.getNacionalidad());
        return new ModelAndView("redirect://index.htm");
    }
    
   //Metodo para Actualizar
    @RequestMapping(value="editar.htm" , method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        String sql="Select * from persona where id="+id;
        datos=this.JdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    
    @RequestMapping(value="editar.htm",method=RequestMethod.POST)
    public ModelAndView Editar(Persona p){
        String sql="update persona set nombre=? , correo=?,nacionalidad=? where id="+id;
        this.JdbcTemplate.update(sql,p.getNombre(),p.getCorreo(),p.getNacionalidad());
        return new ModelAndView("redirect://index.htm");
    }
    
      @RequestMapping("eliminar.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        String sql="delete from persona where id="+id;
        this.JdbcTemplate.update(sql);
        return new ModelAndView("redirect://index.htm");

}
    @RequestMapping("buscar.htm")
      public ModelAndView buscar(HttpServletRequest request){
       String nombuscar = request.getParameter("txtBuscar");
       if(nombuscar !=null){
           String sql ="select * from persona where nombre LIKE" + "'%"
                   + nombuscar + "%'";
           datos = JdbcTemplate.queryForList(sql);
            mav.addObject("Lista", datos);
             mav.setViewName("index");
           
       }
       return mav;
   }
   
}
