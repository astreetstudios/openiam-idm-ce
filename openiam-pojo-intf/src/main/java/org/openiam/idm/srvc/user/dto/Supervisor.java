package org.openiam.idm.srvc.user.dto;


import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import java.util.Date;

/**
 * Supervisor generated by hbm2java
 */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "supervisor", propOrder = {
        "comments",
        "employee",
        "endDate",
        "isPrimarySuper",
        "orgStructureId",
        "startDate",
        "status",
        "supervisor",
        "supervisorType"
})
public class Supervisor implements java.io.Serializable {


    protected String comments;
    protected User employee;
    @XmlSchemaType(name = "dateTime")
    protected Date endDate;
    protected Integer isPrimarySuper;
    protected String orgStructureId;
    @XmlSchemaType(name = "dateTime")
    protected Date startDate;
    protected String status;
    protected User supervisor;
    protected String supervisorType;


    public Supervisor() {
    }


    public Supervisor(String orgStructureId, User usersBySupervisorId, User employee) {
        this.orgStructureId = orgStructureId;
        this.supervisor = usersBySupervisorId;
        this.employee = employee;
    }

    public Supervisor(String orgStructureId, User usersBySupervisorId, User employee,
                      String supervisorType, Integer isPrimarySuper, Date startDate,
                      Date endDate, String status, String comments) {
        this.orgStructureId = orgStructureId;
        this.supervisor = usersBySupervisorId;
        this.employee = employee;
        this.supervisorType = supervisorType;
        this.isPrimarySuper = isPrimarySuper;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.comments = comments;
    }

    public String getOrgStructureId() {
        return this.orgStructureId;
    }

    public void setOrgStructureId(String orgStructureId) {
        this.orgStructureId = orgStructureId;
    }

    public User getSupervisor() {
        return this.supervisor;
    }

    public void setSupervisor(User usersBySupervisorId) {
        this.supervisor = usersBySupervisorId;
    }

    public User getEmployee() {
        return this.employee;
    }

    public void setEmployee(User usersByStaffId) {
        this.employee = usersByStaffId;
    }

    public String getSupervisorType() {
        return this.supervisorType;
    }

    public void setSupervisorType(String supervisorType) {
        this.supervisorType = supervisorType;
    }

    public Integer getIsPrimarySuper() {
        return this.isPrimarySuper;
    }

    public void setIsPrimarySuper(Integer isPrimarySuper) {
        this.isPrimarySuper = isPrimarySuper;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Supervisor{" +
                "comments='" + comments + '\'' +
                ", employee=" + employee +
                ", endDate=" + endDate +
                ", isPrimarySuper=" + isPrimarySuper +
                ", orgStructureId='" + orgStructureId + '\'' +
                ", startDate=" + startDate +
                ", status='" + status + '\'' +
                ", supervisor=" + supervisor +
                ", supervisorType='" + supervisorType + '\'' +
                '}';
    }
}


