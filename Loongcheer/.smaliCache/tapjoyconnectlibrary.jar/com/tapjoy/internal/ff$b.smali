.class final Lcom/tapjoy/internal/ff$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/ff;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 143
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/ff;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 6

    .line 141
    check-cast p1, Lcom/tapjoy/internal/ff;

    .line 4148
    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v1, p1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    iget-object v2, p1, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    .line 4149
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    if-eqz v1, :cond_23

    sget-object v1, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    .line 4150
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    .line 4151
    invoke-virtual {p1}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 141
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 8

    .line 141
    nop

    .line 1164
    new-instance v0, Lcom/tapjoy/internal/ff$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ff$a;-><init>()V

    .line 1165
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 1166
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    .line 1167
    packed-switch v3, :pswitch_data_4e

    .line 1172
    nop

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 1172
    nop

    .line 1173
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 1174
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ff$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 1175
    goto :goto_a

    .line 1170
    :pswitch_24
    sget-object v3, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2126
    iput-object v3, v0, Lcom/tapjoy/internal/ff$a;->e:Ljava/lang/Long;

    .line 1170
    goto :goto_a

    .line 1169
    :pswitch_2f
    sget-object v3, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2121
    iput-object v3, v0, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    .line 1169
    goto :goto_a

    .line 1168
    :pswitch_3a
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2116
    iput-object v3, v0, Lcom/tapjoy/internal/ff$a;->c:Ljava/lang/String;

    .line 1168
    goto :goto_a

    .line 1178
    :cond_45
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 1179
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff;

    move-result-object p1

    .line 141
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

    .line 141
    check-cast p2, Lcom/tapjoy/internal/ff;

    .line 3156
    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3157
    sget-object v0, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3158
    iget-object v0, p2, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3159
    :cond_1e
    invoke-virtual {p2}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 141
    return-void
.end method
