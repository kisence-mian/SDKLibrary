.class public final Lcom/mintegral/msdk/mtgjscommon/a/a$c;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/mintegral/msdk/mtgjscommon/a/a$d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/mintegral/msdk/mtgjscommon/a/a$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$c;->a:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/a/a$d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method
