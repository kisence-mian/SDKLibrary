.class final Lcom/tapjoy/internal/ek$4;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V
    .registers 3

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 9

    .line 367
    check-cast p1, Ljava/lang/String;

    .line 3369
    nop

    .line 4072
    nop

    .line 4073
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v1, v0, :cond_4a

    .line 4074
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4075
    const/16 v4, 0x80

    if-lt v3, v4, :cond_45

    .line 4077
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1b

    .line 4078
    add-int/lit8 v2, v2, 0x2

    goto :goto_47

    .line 4079
    :cond_1b
    const v4, 0xd800

    if-lt v3, v4, :cond_42

    const v4, 0xdfff

    if-le v3, v4, :cond_26

    goto :goto_42

    .line 4081
    :cond_26
    const v5, 0xdbff

    if-gt v3, v5, :cond_45

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_45

    .line 4082
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-lt v5, v6, :cond_45

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_45

    .line 4084
    add-int/lit8 v2, v2, 0x4

    .line 4085
    move v1, v3

    goto :goto_47

    .line 4080
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x3

    goto :goto_47

    .line 4088
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 4073
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4091
    :cond_4a
    nop

    .line 367
    return v2
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 4

    .line 367
    nop

    .line 1377
    nop

    .line 2264
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->g()J

    move-result-wide v0

    .line 2265
    iget-object p1, p1, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {p1, v0, v1}, Lcom/tapjoy/internal/iv;->c(J)Ljava/lang/String;

    move-result-object p1

    .line 367
    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 3

    .line 367
    check-cast p2, Ljava/lang/String;

    .line 2373
    nop

    .line 3198
    iget-object p1, p1, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    invoke-interface {p1, p2}, Lcom/tapjoy/internal/iu;->b(Ljava/lang/String;)Lcom/tapjoy/internal/iu;

    .line 367
    return-void
.end method
