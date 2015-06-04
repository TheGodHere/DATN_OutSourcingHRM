<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form class="form-popup" style="max-width: none">
            <div class="modal-header" style="text-align: center">
                <button type="button" class="close" data-dismiss="modal" 
                        aria-label="Close" style="max-width: 20px; 
                        float:right"><span aria-hidden="true">&times;</span></button>
                <font id="modal-title" style="font-size: 25px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit;">Project Member Appraisal</font>
            </div>
            <div class="modal-body">
                <div style="margin: 20px 0">
                    <table style="width: 40%;margin-left: 50px;font-weight: 700">
                        <tr style="background-color: inherit">
                            <td>Project Name:</td>
                            <td>Outsourcing HRM</td>
                        </tr>
                        <tr style="background-color: inherit">
                            <td>Engineer ID: </td>
                            <td>HoangLM2</td>
                        </tr>
                        <tr style="background-color: inherit">
                            <td>Engineer Name:</td>
                            <td>Le Minh Hoang</td>
                        </tr>
                    </table>
                </div>
                <div style="margin: 20px 0">
                    <!--<form style="max-width: none">-->
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 5%; text-align: center">
                                    #
                                </th>
                                <th style="width: 80%; text-align: center">
                                    Criterion
                                </th>
                                <th style="width: 15%; text-align: center">
                                    Point
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align: center">
                                    <label>1</label>
                                </td>
                                <td>
                                    <div>
                                        <label>Appraisal Criterion 1</label>
                                    </div>                                
                                    <div>
                                        <p style="margin: 0px 5%">This is description for Appraisal Criterion 1</p>
                                    </div>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>                        
                            <tr>
                                <td style="text-align: center">
                                    <label>2</label>
                                </td>
                                <td>
                                    <label>Appraisal Criterion 2</label>
                                    <p style="margin: 0px 5%">This is description for Appraisal Criterion 2</p>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>3</label>
                                </td>
                                <td>
                                    <label>Appraisal Criterion 3</label>
                                    <p style="margin: 0px 5%">This is description for Appraisal Criterion 3</p>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%">
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; padding-top: 20px">
                                </td>
                                <td style="text-align: right; padding-top: 20px">
                                    <label style="margin: 5px 5%">Average Point:</label>
                                </td>
                                <td style="text-align: center; padding-top: 20px">
                                    <input type="text" style="margin: 0; width: 35%" readonly value="7.8">
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div style="text-align: center">
                                        <div>Manager's opinion</div>
                                        <textarea name="apprContent" style="height: 100px; border: 1px solid"></textarea>
                                    </div>
                                </td> 
                            </tr>
                        </tbody>
                    </table>
                    <!--</form>-->
                </div>
            </div>
            <div class="modal-footer">
                <div style="text-align: center; margin: 20px 0">
                    <input type="button" class="btn btn-primary" value="Submit">
                    <input type="button" class="btn btn-default" value="Cancel">
                </div>
            </div>
        </form>
    </div>
</div>