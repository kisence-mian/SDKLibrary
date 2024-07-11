.class final Lcom/tapjoy/internal/ey$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/ey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 142
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/ey;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 143
    return-void
.end method

.method private static b(Lcom/tapjoy/internal/el;)Lcom/tapjoy/internal/ey;
    .registers 9

    .line 163
    new-instance v0, Lcom/tapjoy/internal/ey$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ey$a;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 165
    :goto_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_52

    .line 166
    packed-switch v3, :pswitch_data_5a

    .line 178
    nop

    .line 1188
    iget-object v4, p0, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 178
    nop

    .line 179
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 180
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/ey$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 181
    goto :goto_9

    .line 176
    :pswitch_23
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p0}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1125
    iput-object v3, v0, Lcom/tapjoy/internal/ey$a;->e:Ljava/lang/String;

    .line 176
    goto :goto_9

    .line 175
    :pswitch_2e
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p0}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1120
    iput-object v3, v0, Lcom/tapjoy/internal/ey$a;->d:Ljava/lang/String;

    .line 175
    goto :goto_9

    .line 169
    :pswitch_39
    :try_start_39
    sget-object v4, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/ek;

    invoke-virtual {v4, p0}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/ez;

    .line 1115
    iput-object v4, v0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/ez;
    :try_end_43
    .catch Lcom/tapjoy/internal/ek$a; {:try_start_39 .. :try_end_43} :catch_44

    .line 172
    goto :goto_9

    .line 170
    :catch_44
    move-exception v4

    .line 171
    sget-object v5, Lcom/tapjoy/internal/eh;->a:Lcom/tapjoy/internal/eh;

    iget v4, v4, Lcom/tapjoy/internal/ek$a;->a:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/tapjoy/internal/ey$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 173
    goto :goto_9

    .line 184
    :cond_52
    invoke-virtual {p0, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 185
    invoke-virtual {v0}, Lcom/tapjoy/internal/ey$a;->b()Lcom/tapjoy/internal/ey;

    move-result-object p0

    return-object p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2e
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 6

    .line 140
    check-cast p1, Lcom/tapjoy/internal/ey;

    .line 3147
    sget-object v0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/ek;

    iget-object v1, p1, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v2, p1, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    .line 3148
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    if-eqz v1, :cond_23

    sget-object v1, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    .line 3149
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    .line 3150
    invoke-virtual {p1}, Lcom/tapjoy/internal/ey;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 140
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 2

    .line 140
    invoke-static {p1}, Lcom/tapjoy/internal/ey$b;->b(Lcom/tapjoy/internal/el;)Lcom/tapjoy/internal/ey;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 6

    .line 140
    check-cast p2, Lcom/tapjoy/internal/ey;

    .line 2155
    sget-object v0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2156
    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2157
    iget-object v0, p2, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 2158
    :cond_1e
    invoke-virtual {p2}, Lcom/tapjoy/internal/ey;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 140
    return-void
.end method
