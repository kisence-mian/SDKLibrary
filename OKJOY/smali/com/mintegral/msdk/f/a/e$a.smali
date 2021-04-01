.class final Lcom/mintegral/msdk/f/a/e$a;
.super Ljava/lang/Object;
.source "LruDiskUsage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/a/e;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/f/a/e;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mintegral/msdk/f/a/e$a;->a:Lcom/mintegral/msdk/f/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/mintegral/msdk/f/a/e$a;->b:Ljava/io/File;

    .line 64
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    .line 1068
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/e$a;->a:Lcom/mintegral/msdk/f/a/e;

    iget-object v1, p0, Lcom/mintegral/msdk/f/a/e$a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/a/e;->a(Lcom/mintegral/msdk/f/a/e;Ljava/io/File;)V

    .line 1069
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method
