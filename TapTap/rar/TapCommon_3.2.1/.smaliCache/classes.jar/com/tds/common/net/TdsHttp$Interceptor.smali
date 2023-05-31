.class public interface abstract Lcom/tds/common/net/TdsHttp$Interceptor;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/tds/common/net/TdsHttp$Interceptor$Chain;)Lcom/tds/common/net/TdsHttp$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
