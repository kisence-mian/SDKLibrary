.class public interface abstract Lcom/tds/common/account/TdsAccount;
.super Ljava/lang/Object;
.source "TdsAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/account/TdsAccount$AccountType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;
.end method

.method public abstract getToken()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
