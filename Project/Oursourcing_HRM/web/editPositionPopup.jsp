<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
    <div>
        <h1 style="text-align: center; font-size: 40px;">Edit project member</h1>    
    </div>    
    <form style="max-width: none; width: 80%; vertical-align: top; margin-top: 30px">
        <table style="width: 80%;margin: 0 auto; color: black">
            <tbody style="vertical-align: top">
                <tr style="background-color: inherit">
                    <td>ID:</td>
                    <td>HoangLM2</td>
                    <td>
                        Work type: 
                    </td>
                    <td>
                        <select name="workType" >
                            <option>Full-time</option>
                            <option>Part-time</option>
                        </select>
                    </td>

                </tr>
                <tr style="background-color: inherit; height: 32px">
                    <td>
                        Fullname: 
                    </td>
                    <td>
                        Le Minh Hoang
                    </td>
                    <td rowspan="2">Position:</td>
                    <td rowspan="2">
                        <div>
                            <input type="checkbox" name="skill" value="Developer" checked="" />
                            Developer
                        </div>
                        <div>
                            <input type="checkbox" name="skill" value="Tester" checked="" />
                            Tester
                        </div>
                        <div>
                            <input type="checkbox" name="skill" value="Supporter" checked="" />
                            Supporter
                        </div>
                        <div>
                            <input type="checkbox" name="skill" value="Supporter" checked="" />
                            SA
                        </div>
                        <div>
                            <input type="checkbox" name="skill" value="Supporter" checked="" />
                            BA
                        </div>
                    </td>
                </tr>
                <tr style="background-color: inherit">
                    <td>Skill:</td>
                    <td>
                        Java <br/>
                        SQL Server
                    </td>
                </tr>
            </tbody>
        </table>
        <div style="text-align: center; margin: 15px">
            <button type="submit" class="btn btn-primary" 
                    style="width: 150px">Save</button>   
        </div>
    </form>



</div>