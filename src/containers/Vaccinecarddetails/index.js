import React from 'react'
import {
    Input,
    Container,
    Row,
    Col,
    Button,
    Modal,
    Card,
    CardBody,
    CardTitle,
} from "reactstrap";
import { useState, useEffect } from "react";
import { connect } from "react-redux";
import { getCompany, getVcount } from '../../actions'
export default function Cardv({ getCompany, getVcount, getVcountsuccess, getcompanysuccess }) {


    useEffect(() => {
        getCompany(
            {
                userid: localStorage.getItem("userid"),
            },
            localStorage.getItem("token")
        );
        getVcount(
            { userid: localStorage.getItem("userid") },
            localStorage.getItem("token")
        );
    }, []);

    const [data1, setdata1] = useState();

    React.useEffect(() => {
        if (getVcountsuccess)
            if (getVcountsuccess.status == 200) {
                setdata1(getVcountsuccess.data);
            }
    }, [getVcountsuccess]);



    return (
        <div>
            <Container className="mt-5">
                <Col>
                    <Row>
                        <div class="bg-secondary shadow card">
                            <div className="card-body">
                                <div className="mb-3">
                                    <small className="text-uppercase font-weight-bold">
                                        card1 Details
                  </small>
                                    {/* <Form.Group as={Col} lg="12" sm="12">
                    <Input
                      required
                      value={spetialization}
                      className="form-control-alternative"
                      type="text"
                      placeholder="Available count"
                      onChange={(e) => setSpetialization(e.target.value)}
                    >

                    </Input>
                    {validateMsgValid}
                    {validateMsgInvalid}
                  </Form.Group> */}
                                    <br></br>
                                    <div className="text-center">
                                        <span className="mt-3 text-red font-weight-bold mb-0">
                                            Available count:
                                            {data1
                                                ? data1.map((item) => (
                                                    <span value={item.id}>{item.available_count}</span>

                                                ))
                                                : "Not Available"}
                                        </span><br></br>
                                        <Button color="danger" type="submit" className="">
                                            Order
                  </Button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </Row>
                </Col>
            </Container>

        </div>

    )
}

const mapDispatchToProps = {

    getCompany: getCompany,
    getVcount: getVcount
};

const mapStateToProps = (state) => ({

    getcompanysuccess: state.getcompanysuccess,
    getVcountsuccess: state.getVcountsuccess
});

Cardv = connect(mapStateToProps, mapDispatchToProps)(Cardv);