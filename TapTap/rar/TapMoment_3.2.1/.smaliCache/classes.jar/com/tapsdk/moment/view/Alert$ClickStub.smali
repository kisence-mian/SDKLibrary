.class public abstract Lcom/tapsdk/moment/view/Alert$ClickStub;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Lcom/tapsdk/moment/view/Alert$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClickStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .registers 1

    .line 141
    return-void
.end method

.method public onPositive()V
    .registers 1

    .line 146
    return-void
.end method
