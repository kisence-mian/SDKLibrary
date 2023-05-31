.class public Lcom/JoyFramework/remote/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Lrx/Observable;
    .registers 2

    .prologue
    .line 18
    invoke-static {p0}, Lcom/JoyFramework/remote/b/a;->b(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lcom/JoyFramework/remote/b/a/a;",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/JoyFramework/remote/b/b;

    invoke-direct {v0}, Lcom/JoyFramework/remote/b/b;-><init>()V

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<String:",
            "Ljava/lang/Object;",
            ">(TString;)",
            "Lrx/Observable",
            "<TString;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/JoyFramework/remote/b/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/remote/b/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
