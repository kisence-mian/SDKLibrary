.class final Lcom/tapjoy/internal/fd$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 135
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/fd;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 136
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 7

    .line 133
    check-cast p1, Lcom/tapjoy/internal/fd;

    .line 4140
    iget-object v0, p1, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget-object v2, p1, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v2, :cond_20

    sget-object v2, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 4141
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    if-eqz v2, :cond_30

    sget-object v1, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    .line 4142
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_31

    :cond_30
    nop

    :goto_31
    add-int/2addr v0, v1

    .line 4143
    invoke-virtual {p1}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 133
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 8

    .line 133
    nop

    .line 1156
    new-instance v0, Lcom/tapjoy/internal/fd$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$a;-><init>()V

    .line 1157
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 1158
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    .line 1159
    packed-switch v3, :pswitch_data_4e

    .line 1164
    nop

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 1164
    nop

    .line 1165
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 1166
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fd$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 1167
    goto :goto_a

    .line 1162
    :pswitch_24
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2123
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->e:Ljava/lang/String;

    .line 1162
    goto :goto_a

    .line 1161
    :pswitch_2f
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2118
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->d:Ljava/lang/String;

    .line 1161
    goto :goto_a

    .line 1160
    :pswitch_3a
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2113
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->c:Ljava/lang/String;

    .line 1160
    goto :goto_a

    .line 1170
    :cond_45
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 1171
    invoke-virtual {v0}, Lcom/tapjoy/internal/fd$a;->b()Lcom/tapjoy/internal/fd;

    move-result-object p1

    .line 133
    return-object p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 6

    .line 133
    check-cast p2, Lcom/tapjoy/internal/fd;

    .line 3148
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3149
    :cond_e
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3150
    :cond_1a
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3151
    :cond_26
    invoke-virtual {p2}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 133
    return-void
.end method
