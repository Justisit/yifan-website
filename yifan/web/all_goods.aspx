<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all_goods.aspx.cs" Inherits="yifan.web.all_goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>all_goods</title>
<style>
table{
    min-width:75px;
    min-height:600px;
    max-width:1260px;
    max-height:100%;
    margin:auto;
    font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;
    color: #000;
    border:solid #cdcdcd;
    border-width:0px 1px 1px 0px;
    position:relative;
}
table tr:nth-child(odd){
    background:#f2f2f2;
}

table tr:nth-child(even){
    background:#fff;
}
table tr:hover{
    background:#1bceff;
}
table tr td{
    border:solid #cdcdcd;
    border-width:1px 0px 0px 1px;
    padding-left:10px;
}
table tr td:nth-child(13){
    width:45px;
}


</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2"
                                ForeColor="#cdcdcd" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound">
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="goods_id" HeaderText="序号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_id" HeaderText="展品编号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_name" HeaderText="展品名称" />
                                    <asp:BoundField DataField="goods_type" HeaderText="展品类型" />
                                    <asp:BoundField DataField="goods_title" HeaderText="title信息" />
                                    <asp:BoundField DataField="goods_creator_id" HeaderText="作者 ID" />
                                    <asp:BoundField DataField="goods_patent_num" HeaderText="专利号" />
                                    <asp:BoundField DataField="goods_img_name" HeaderText="图片name" />
                                    <asp:BoundField DataField="goods_img_address" HeaderText="图片地址" />
                                    <asp:BoundField DataField="goods_intro" HeaderText="详细介绍" />
                                    <asp:BoundField DataField="goods_times" HeaderText="添加时间" />
                                    <asp:BoundField DataField="goods_other" HeaderText="备注信息" />
                                    <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
    </div>
    </form>
</body>
</html>
