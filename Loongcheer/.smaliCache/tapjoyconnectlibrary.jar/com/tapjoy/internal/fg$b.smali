.class final Lcom/tapjoy/internal/fg$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 97
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/fg;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 98
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 5

    .line 95
    check-cast p1, Lcom/tapjoy/internal/fg;

    .line 3102
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ek;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/ek;

    move-result-object v0

    iget-object v1, p1, Lcom/tapjoy/internal/fg;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    .line 3103
    invoke-virtual {p1}, Lcom/tapjoy/internal/fg;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 95
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 8

    .line 95
    nop

    .line 1114
    new-instance v0, Lcom/tapjoy/internal/fg$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fg$a;-><init>()V

    .line 1115
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 1116
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    .line 1117
    packed-switch v3, :pswitch_data_38

    .line 1120
    nop

    .line 1188
    iget-object v4, p1, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 1120
    nop

    .line 1121
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 1122
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fg$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 1123
    goto :goto_a

    .line 1118
    :pswitch_24
    iget-object v3, v0, Lcom/tapjoy/internal/fg$a;->c:Ljava/util/List;

    sget-object v4, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ek;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1126
    :cond_30
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 1127
    invoke-virtual {v0}, Lcom/tapjoy/internal/fg$a;->b()Lcom/tapjoy/internal/fg;

    move-result-object p1

    .line 95
    return-object p1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 6

    .line 95
    check-cast p2, Lcom/tapjoy/internal/fg;

    .line 2108
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ek;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/ek;

    move-result-object v0

    iget-object v1, p2, Lcom/tapjoy/internal/fg;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2109
    invoke-virtual {p2}, Lcom/tapjoy/internal/fg;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 95
    return-void
.end method
