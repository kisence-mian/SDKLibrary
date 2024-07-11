.class public final Lcom/tapjoy/internal/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bg;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Writer;)V
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 23
    if-ne p0, p1, :cond_4

    .line 24
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_4
    instance-of v0, p1, Lcom/tapjoy/internal/bh;

    if-eqz v0, :cond_14

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/bh;

    .line 28
    iget-object v1, p0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 30
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/lang/String;

    return-object v0
.end method
