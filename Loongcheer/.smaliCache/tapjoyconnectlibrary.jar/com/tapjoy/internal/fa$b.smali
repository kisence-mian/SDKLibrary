.class final Lcom/tapjoy/internal/fa$b;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/fa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 123
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    const-class v1, Lcom/tapjoy/internal/fa;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 124
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 6

    .line 121
    check-cast p1, Lcom/tapjoy/internal/fa;

    .line 4128
    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v1, p1, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    iget-object v2, p1, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    .line 4129
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/tapjoy/internal/ek;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4130
    invoke-virtual {p1}, Lcom/tapjoy/internal/fa;->a()Lcom/tapjoy/internal/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    add-int/2addr v0, p1

    .line 121
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 8

    .line 121
    nop

    .line 1142
    new-instance v0, Lcom/tapjoy/internal/fa$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fa$a;-><init>()V

    .line 1143
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->a()J

    move-result-wide v1

    .line 1144
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3a

    .line 1145
    packed-switch v3, :pswitch_data_42

    .line 1149
    nop

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 1149
    nop

    .line 1150
    invoke-virtual {v4}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/ek;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v5

    .line 1151
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fa$a;->a(ILcom/tapjoy/internal/eh;Ljava/lang/Object;)Lcom/tapjoy/internal/ei$a;

    .line 1152
    goto :goto_a

    .line 1147
    :pswitch_24
    sget-object v3, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2106
    iput-object v3, v0, Lcom/tapjoy/internal/fa$a;->d:Ljava/lang/Long;

    .line 1147
    goto :goto_a

    .line 1146
    :pswitch_2f
    sget-object v3, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2101
    iput-object v3, v0, Lcom/tapjoy/internal/fa$a;->c:Ljava/lang/String;

    .line 1146
    goto :goto_a

    .line 1155
    :cond_3a
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/el;->a(J)V

    .line 1156
    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->b()Lcom/tapjoy/internal/fa;

    move-result-object p1

    .line 121
    return-object p1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 6

    .line 121
    check-cast p2, Lcom/tapjoy/internal/fa;

    .line 3135
    sget-object v0, Lcom/tapjoy/internal/ek;->p:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3136
    sget-object v0, Lcom/tapjoy/internal/ek;->i:Lcom/tapjoy/internal/ek;

    iget-object v1, p2, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/em;ILjava/lang/Object;)V

    .line 3137
    invoke-virtual {p2}, Lcom/tapjoy/internal/fa;->a()Lcom/tapjoy/internal/iw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 121
    return-void
.end method
