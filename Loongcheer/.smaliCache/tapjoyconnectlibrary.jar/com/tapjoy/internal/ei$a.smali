.class public abstract Lcom/tapjoy/internal/ei$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tapjoy/internal/ei<",
        "TT;TB;>;B:",
        "Lcom/tapjoy/internal/ei$a<",
        "TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/tapjoy/internal/it;

.field b:Lcom/tapjoy/internal/em;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public final a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tapjoy/internal/eh;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tapjoy/internal/ei$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    if-nez v0, :cond_14

    .line 129
    new-instance v0, Lcom/tapjoy/internal/it;

    invoke-direct {v0}, Lcom/tapjoy/internal/it;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ei$a;->a:Lcom/tapjoy/internal/it;

    .line 130
    new-instance v0, Lcom/tapjoy/internal/em;

    iget-object v1, p0, Lcom/tapjoy/internal/ei$a;->a:Lcom/tapjoy/internal/it;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/iu;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    .line 133
    :cond_14
    :try_start_14
    invoke-virtual {p2}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    invoke-virtual {p2, v0, p1, p3}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_1f

    .line 137
    nop

    .line 138
    return-object p0

    .line 135
    :catch_1f
    move-exception p1

    .line 136
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/ei$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/iw;",
            ")",
            "Lcom/tapjoy/internal/ei$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result v0

    if-lez v0, :cond_27

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    if-nez v0, :cond_1a

    .line 115
    new-instance v0, Lcom/tapjoy/internal/it;

    invoke-direct {v0}, Lcom/tapjoy/internal/it;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ei$a;->a:Lcom/tapjoy/internal/it;

    .line 116
    new-instance v0, Lcom/tapjoy/internal/em;

    iget-object v1, p0, Lcom/tapjoy/internal/ei$a;->a:Lcom/tapjoy/internal/it;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/em;-><init>(Lcom/tapjoy/internal/iu;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    .line 119
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/tapjoy/internal/ei$a;->b:Lcom/tapjoy/internal/em;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 122
    goto :goto_27

    .line 120
    :catch_20
    move-exception p1

    .line 121
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_27
    :goto_27
    return-object p0
.end method

.method public final a()Lcom/tapjoy/internal/iw;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/ei$a;->a:Lcom/tapjoy/internal/it;

    if-eqz v0, :cond_12

    .line 153
    invoke-virtual {v0}, Lcom/tapjoy/internal/it;->i()Lcom/tapjoy/internal/it;

    move-result-object v0

    .line 1525
    new-instance v1, Lcom/tapjoy/internal/iw;

    invoke-virtual {v0}, Lcom/tapjoy/internal/it;->h()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/iw;-><init>([B)V

    .line 153
    return-object v1

    :cond_12
    sget-object v0, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    .line 152
    return-object v0
.end method
