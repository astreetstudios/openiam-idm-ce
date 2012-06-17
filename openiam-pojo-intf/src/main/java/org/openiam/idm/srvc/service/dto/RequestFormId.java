package org.openiam.idm.srvc.service.dto;

// Generated Apr 19, 2007 12:21:40 AM by Hibernate Tools 3.2.0.beta8

/**
 * RequestFormId generated by hbm2java
 */
public class RequestFormId implements java.io.Serializable {

    // Fields

    private String requestType;

    private String serviceId;

    // Constructors

    /**
     * default constructor
     */
    public RequestFormId() {
    }

    /**
     * full constructor
     */
    public RequestFormId(String requestType, String serviceId) {
        this.requestType = requestType;
        this.serviceId = serviceId;
    }

    // Property accessors
    public String getRequestType() {
        return this.requestType;
    }

    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public boolean equals(Object other) {
        if ((this == other))
            return true;
        if ((other == null))
            return false;
        if (!(other instanceof RequestFormId))
            return false;
        RequestFormId castOther = (RequestFormId) other;

        return ((this.getRequestType() == castOther.getRequestType()) || (this
                .getRequestType() != null
                && castOther.getRequestType() != null && this.getRequestType()
                .equals(castOther.getRequestType())))
                && ((this.getServiceId() == castOther.getServiceId()) || (this
                .getServiceId() != null
                && castOther.getServiceId() != null && this
                .getServiceId().equals(castOther.getServiceId())));
    }

    public int hashCode() {
        int result = 17;

        result = 37
                * result
                + (getRequestType() == null ? 0 : this.getRequestType()
                .hashCode());
        result = 37 * result
                + (getServiceId() == null ? 0 : this.getServiceId().hashCode());
        return result;
    }

}
