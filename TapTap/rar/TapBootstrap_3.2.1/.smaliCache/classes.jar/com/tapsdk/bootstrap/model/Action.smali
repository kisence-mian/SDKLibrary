.class public Lcom/tapsdk/bootstrap/model/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final code:I

.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    .local p0, "this":Lcom/tapsdk/bootstrap/model/Action;, "Lcom/tapsdk/bootstrap/model/Action<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/tapsdk/bootstrap/model/Action;->code:I

    .line 10
    iput-object p2, p0, Lcom/tapsdk/bootstrap/model/Action;->data:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/tapsdk/bootstrap/model/Action;->message:Ljava/lang/String;

    .line 12
    return-void
.end method
