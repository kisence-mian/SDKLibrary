.class public Lcom/tds/common/account/XdgAccount;
.super Ljava/lang/Object;
.source "XdgAccount.java"

# interfaces
.implements Lcom/tds/common/account/TdsAccount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/account/TdsAccount<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tds/common/account/XdgAccount;->token:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 2

    .line 13
    sget-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->XDG:Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0}, Lcom/tds/common/account/XdgAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/tds/common/account/XdgAccount;->token:Ljava/lang/String;

    return-object v0
.end method
