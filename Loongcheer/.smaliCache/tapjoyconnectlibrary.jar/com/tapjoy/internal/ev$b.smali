.class final Lcom/tapjoy/internal/ev$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/ev;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 176
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/ev;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 177
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 7

    .line 174
    check-cast p1, Lcom/tapjoy/internal/ev;

    .line 3181
    iget-object v0, p1, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget-object v2, p1, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    sget-object v2, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ek;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    .line 3182
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    if-eqz v2, :cond_30

    sget-object v2, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    .line 3183
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    if-eqz v2, :cond_40

    sget-object v2, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    .line 3184
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    if-eqz v2, :cond_50

    sget-object v1, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    .line 3185
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_51

    :cond_50
    nop

    :goto_51
    add-int/2addr v0, v1

    .line 3186
    invoke-virtual {p1}, Lcom/tapjoy/internal/ev;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 174
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 8

    .line 174
    nop

    .line 1201
    new-instance v0, Lcom/tapjoy/internal/ev$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ev$a;-><init>()V

    .line 1202
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 1203
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5b

    .line 1204
    packed-switch v3, :pswitch_data_64

    .line 1211
    nop

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 1211
    nop

    .line 1212
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 1213
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ev$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 1214
    goto :goto_a

    .line 1209
    :pswitch_24
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2164
    iput-object v3, v0, Lcom/tapjoy/internal/ev$a;->g:Ljava/lang/String;

    .line 1209
    goto :goto_a

    .line 1208
    :pswitch_2f
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2159
    iput-object v3, v0, Lcom/tapjoy/internal/ev$a;->f:Ljava/lang/String;

    .line 1208
    goto :goto_a

    .line 1207
    :pswitch_3a
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2154
    iput-object v3, v0, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    .line 1207
    goto :goto_a

    .line 1206
    :pswitch_45
    sget-object v3, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2149
    iput-object v3, v0, Lcom/tapjoy/internal/ev$a;->d:Ljava/lang/Integer;

    .line 1206
    goto :goto_a

    .line 1205
    :pswitch_50
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2144
    iput-object v3, v0, Lcom/tapjoy/internal/ev$a;->c:Ljava/lang/String;

    .line 1205
    goto :goto_a

    .line 1217
    :cond_5b
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 1218
    invoke-virtual {v0}, Lcom/tapjoy/internal/ev$a;->b()Lcom/tapjoy/internal/ev;

    move-result-object p1

    .line 174
    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 6

    .line 174
    check-cast p2, Lcom/tapjoy/internal/ev;

    .line 2191
    iget-object v0, p2, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2192
    :cond_e
    iget-object v0, p2, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/tapjoy/internal/ek;->d:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2193
    :cond_1a
    iget-object v0, p2, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2194
    :cond_26
    iget-object v0, p2, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2195
    :cond_32
    iget-object v0, p2, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2196
    :cond_3e
    invoke-virtual {p2}, Lcom/tapjoy/internal/ev;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 174
    return-void
.end method
