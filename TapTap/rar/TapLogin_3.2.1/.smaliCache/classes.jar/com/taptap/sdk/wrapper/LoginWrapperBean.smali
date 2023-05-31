.class public Lcom/taptap/sdk/wrapper/LoginWrapperBean;
.super Ljava/lang/Object;
.source "LoginWrapperBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private loginCallbackCode:I

.field private wrapper:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->loginCallbackCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->wrapper:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->loginCallbackCode:I

    return-void
.end method


# virtual methods
.method public getLoginCallbackCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->loginCallbackCode:I

    return v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public setLoginCallbackCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->loginCallbackCode:I

    return-void
.end method

.method public setWrapper(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/wrapper/LoginWrapperBean;->wrapper:Ljava/lang/Object;

    return-void
.end method
