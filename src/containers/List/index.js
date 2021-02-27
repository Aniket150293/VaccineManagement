import React, { useState, useEffect } from 'react'
import { Form, Table, Modal, Row, Input, ButtonToolbar } from "reactstrap";
import { getList } from '../../actions'
import { connect } from "react-redux";
export default function List({ getList, getListsuccess }) {

    const [data, setData] = useState([]);
    const [data1, setData1] = useState();
    React.useEffect(() => {
        if (getListsuccess) {

            if (getListsuccess.status == 200) {
                console.log(getListsuccess);
                setData(getListsuccess.data);
            }
        }
    }, [getListsuccess]);



    React.useEffect(() => {
        getList(
            {
                userid: localStorage.getItem("userid"),

            },
            localStorage.getItem("token")
        );
    }, []);
    const [pay, setPay] = useState();
    React.useEffect(() => {

        localStorage.getItem("paymentin", pay);
    });




    return (
        <div
            className="container-fluid py-5 "
            style={{ "background-color": "#333333" }}
        >
            <Form className="shadow card mt-5">
                {/* <div className="card-body" > */}
                <Table responsive striped bordered hover>
                    <thead>
                        <tr>
                            <th>Virus Name</th>
                            <th>Company Name</th>
                            <th>Dose</th>
                            <th>Amount</th>
                            <th>dateoforder</th>
                            <th>Payment</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data
                            ? data.map((item) => {
                                return (
                                    <tr>
                                        <td>{item.vname}</td>
                                        <td>{item.company_name}</td>
                                        <td>{item.Total_quantity}</td>
                                        <td>{item.Final_amount}</td>
                                        <td>{item.cddate}</td>
                                        <td>{localStorage.getItem("paymentin", pay)}</td>
                                    </tr>
                                );
                            })
                            : "notfound"}
                    </tbody>
                </Table>
                {/* </div> */}
            </Form>
        </div>
    )
}
const mapDispatchToProps = {
    getList: getList,
};

const mapStateToProps = (state) => ({
    getListsuccess: state.getListsuccess
});

List = connect(
    mapStateToProps,
    mapDispatchToProps
)(List);
