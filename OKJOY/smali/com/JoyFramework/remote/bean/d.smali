.class public Lcom/JoyFramework/remote/bean/d;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/remote/bean/d$a;
    }
.end annotation


# instance fields
.field private b:Lcom/JoyFramework/remote/bean/d$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/JoyFramework/remote/bean/d$a;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/d;->b:Lcom/JoyFramework/remote/bean/d$a;

    return-object v0
.end method

.method public a(Lcom/JoyFramework/remote/bean/d$a;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/d;->b:Lcom/JoyFramework/remote/bean/d$a;

    .line 18
    return-void
.end method
