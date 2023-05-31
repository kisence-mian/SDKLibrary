.class final Lcom/JoyFramework/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 87
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 88
    return-void
.end method
