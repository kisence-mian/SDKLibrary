.class public interface abstract Lcom/zui/deviceidservice/IDeviceidInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub;,
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract getAAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOAID()Ljava/lang/String;
.end method

.method public abstract getUDID()Ljava/lang/String;
.end method

.method public abstract getVAID(Ljava/lang/String;)Ljava/lang/String;
.end method
