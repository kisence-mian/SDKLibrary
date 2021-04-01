.class public interface abstract Lcom/zui/deviceidservice/IDeviceidInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub;,
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getAAID(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getVAID(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
