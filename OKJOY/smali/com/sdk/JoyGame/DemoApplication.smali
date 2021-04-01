.class public Lcom/sdk/JoyGame/DemoApplication;
.super Lcom/JoyFramework/common/JoyApplication;
.source "DemoApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/JoyFramework/common/JoyApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/JoyFramework/common/JoyApplication;->onCreate()V

    .line 13
    return-void
.end method
