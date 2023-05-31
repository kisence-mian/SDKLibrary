.class public Lcom/tds/common/account/LCAccount;
.super Ljava/lang/Object;
.source "LCAccount.java"

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
.field public clientId:Ljava/lang/String;

.field public clientToken:Ljava/lang/String;

.field public sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientToken"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tds/common/account/LCAccount;->clientId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/tds/common/account/LCAccount;->clientToken:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/tds/common/account/LCAccount;->sessionToken:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 2

    .line 17
    sget-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->LC:Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0}, Lcom/tds/common/account/LCAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/tds/common/account/LCAccount;->sessionToken:Ljava/lang/String;

    return-object v0
.end method
