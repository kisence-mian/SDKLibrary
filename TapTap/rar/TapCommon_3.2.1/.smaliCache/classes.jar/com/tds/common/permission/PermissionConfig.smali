.class public Lcom/tds/common/permission/PermissionConfig;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# instance fields
.field public buttonText:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tds/common/permission/PermissionConfig;->title:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/tds/common/permission/PermissionConfig;->reason:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/tds/common/permission/PermissionConfig;->buttonText:Ljava/lang/String;

    .line 12
    return-void
.end method
