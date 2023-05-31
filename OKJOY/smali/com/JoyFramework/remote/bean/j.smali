.class public Lcom/JoyFramework/remote/bean/j;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Offline"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/JoyFramework/remote/bean/j;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/JoyFramework/remote/bean/j;->b:I

    .line 20
    return-void
.end method
