.class public interface abstract Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;
.super Ljava/lang/Object;
.source "AuthInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/intercerptor/AuthInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TDSAccountProvider"
.end annotation


# virtual methods
.method public abstract getTdsAccount()Lcom/tds/common/account/TdsAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/account/TdsAccount<",
            "*>;"
        }
    .end annotation
.end method
