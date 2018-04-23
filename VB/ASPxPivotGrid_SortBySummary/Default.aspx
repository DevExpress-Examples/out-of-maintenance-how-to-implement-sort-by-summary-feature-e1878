﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
           Inherits="SortBySummary._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v9.3, Version=9.3.1.0,
           Culture=neutral, PublicKeyToken=b88d1754d700e49a"
           Namespace="DevExpress.Web.ASPxPivotGrid"
           TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
				DataSourceID="AccessDataSource1">
			<Fields>
				<dx:PivotGridField ID="fieldProductName" Area="RowArea"
                                                                                SortBySummaryInfo-FieldName="Quantity"
					AreaIndex="1" FieldName="ProductName">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldSalesperson" Area="RowArea"
                                                                                AreaIndex="0" FieldName="Salesperson">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldQuantity" Area="DataArea"
                                                                                AreaIndex="0" FieldName="Quantity">
				</dx:PivotGridField>
			</Fields>
		</dx:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
			DataFile="~/App_Data/nwind.mdb" 
			SelectCommand="SELECT [ProductName], 
                                                        [Salesperson], [Quantity]
                                                        FROM [Invoices]">
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>