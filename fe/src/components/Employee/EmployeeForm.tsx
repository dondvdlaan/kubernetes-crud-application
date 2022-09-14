import React, { useState }  from "react"
import { useNavigate }      from 'react-router-dom';
import { Api, useApi }      from "../../shared/API";
import { Company }          from "../../types/Company";
import { Employee }         from "../../types/Employee";
import css                  from "./EmployeeForm.module.css";
import {Method}             from "axios";


interface Props extends Employee{
    isEdit  : boolean
    compName: string
}

// Main
export const EmployeeForm = (props: Props) =>{

    // ************** Hooks and Constants **************
    const [emplFirstName, setEmplFirstName] = useState(props.emplFirstName);
    const [emplLastName, setEmplLastName]   = useState(props.emplLastName);
    const [emplEmail, setEmplEmail]         = useState(props.emplEmail);
    const [emplTel, setEmplTel]             = useState(props.emplTel);
    const [compID, setCompID]               = useState(props.compID);
    
    const navigate                          = useNavigate();
    const [companies, setCompanies]         = useApi<Company[]>("allCompanies");
    
    
    if(companies === undefined){
        return (<p>Lade...</p>)
    }
    
    const employee = () =>({
        emplFirstName,
        emplLastName,
        emplEmail,
        emplTel,
        compID,
        emplID          : props.emplID,
    })
     
    // ************** Event handling **************
    const onFormSubmit = (e: React.FormEvent) =>{
        e.preventDefault();
        console.log('Form submitted');

        const [method, path]:[Method, string] = props.isEdit
        ? ["PUT", `updateEmployee`]
        : ["POST", `addEmployee`];

        Api(method,path, ()=>navigate(-1), employee())
    }

    return(
        <>
        <br />
    <form 
    className   = {css.employeeForm}
    onSubmit    ={onFormSubmit}>

        <div className="form-group row">
            <label htmlFor="emplFirstName" className="col-sm-3 col-form-label">First name</label>
            <div className="col-sm-9">
            <input 
            type                ="text" 
            className           ="form-control" 
            id                  ="emplFirstName" 
            placeholder         ="First name"
            value               ={emplFirstName}
            onChange            ={(e)=>{setEmplFirstName(e.target.value)}}
            required
            minLength={3}
            />
            </div>
        </div>
        
        <div className="form-group row">
            <label htmlFor="emplLastName" className="col-sm-3 col-form-label">Last name</label>
            <div className="col-sm-9">
            <input 
            type                ="text" 
            className           ="form-control" 
            id                  ="emplLastName" 
            placeholder         ="Last name"
            value               ={emplLastName}
            onChange            ={(e)=>{setEmplLastName(e.target.value)}}
            required
            minLength={3}
            />
            </div>
        </div>

        <div className="form-group row">
            <label htmlFor="emplTel" className="col-sm-3 col-form-label">Tel nr.</label>
            <div className="col-sm-9">
            <input 
            type                ="text" 
            className           ="form-control" 
            id                  ="emplTel" 
            placeholder         ="Tel nr."
            value               ={emplTel}
            onChange            ={(e)=>{setEmplTel(e.target.value)}}
            />
            </div>
        </div>

        <div className="form-group row">
            <label htmlFor="emplEmail" className="col-sm-3 col-form-label">Email</label>
            <div className="col-sm-9">
            <input 
            type                ="text" 
            className           ="form-control" 
            id                  ="emplEmail" 
            placeholder         ="Email"
            value               ={emplEmail}
            onChange            ={(e)=>{setEmplEmail(e.target.value)}}
            />
            </div>
        </div>

        <div className="form-group row">
            <label htmlFor="company" className="col-sm-3 col-form-label">Company</label>
            <div className="col-sm-9">
            <select 
            name="company" 
            className="form-control" 
            id="company" 
            placeholder="-----"
            value={compID} 
            onChange={(e)=>{setCompID(e.target.value)}}
            required
            >
                {(props.isEdit)?
                <option value={compID}>{props.compName}</option>
                :
                <option value="" disabled selected >Select Company</option>
                }
                {companies.map(company =>
                    <option value={company.compID}>{company.compName}</option>
                )}
            </select>
            </div>
        </div>

        <div className="form-group row">
            <div className="col-sm-10">
            <button type="submit" className="btn btn-primary">Finished</button>
            </div>
        </div>
    </form>
    </>
    )
}