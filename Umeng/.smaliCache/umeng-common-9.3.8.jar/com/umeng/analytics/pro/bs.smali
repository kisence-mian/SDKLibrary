.class public Lcom/umeng/analytics/pro/bs;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const v0, 0x7fffffff

    sput v0, Lcom/umeng/analytics/pro/bs;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/analytics/pro/br;)Lcom/umeng/analytics/pro/br;
    .registers 4

    .line 171
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_d

    .line 172
    new-instance p0, Lcom/umeng/analytics/pro/bj$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj$a;-><init>()V

    return-object p0

    .line 185
    :cond_d
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1d

    .line 186
    new-instance p0, Lcom/umeng/analytics/pro/bj$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj$a;-><init>()V

    return-object p0

    .line 194
    :cond_1d
    return-object p1
.end method

.method public static a(I)V
    .registers 1

    .line 49
    sput p0, Lcom/umeng/analytics/pro/bs;->a:I

    .line 50
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bp;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/analytics/pro/bs;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V

    .line 61
    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bp;BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 73
    if-lez p2, :cond_8b

    .line 76
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_98

    :pswitch_6
    goto/16 :goto_8a

    .line 136
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->p()Lcom/umeng/analytics/pro/bl;

    move-result-object p1

    .line 137
    nop

    :goto_d
    iget v1, p1, Lcom/umeng/analytics/pro/bl;->b:I

    if-ge v0, v1, :cond_1b

    .line 138
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bl;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 140
    :cond_1b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->q()V

    .line 141
    goto/16 :goto_8a

    .line 128
    :pswitch_20
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->r()Lcom/umeng/analytics/pro/bt;

    move-result-object p1

    .line 129
    nop

    :goto_25
    iget v1, p1, Lcom/umeng/analytics/pro/bt;->b:I

    if-ge v0, v1, :cond_33

    .line 130
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bt;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 132
    :cond_33
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->s()V

    .line 133
    goto :goto_8a

    .line 119
    :pswitch_37
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->n()Lcom/umeng/analytics/pro/bm;

    move-result-object p1

    .line 120
    nop

    :goto_3c
    iget v1, p1, Lcom/umeng/analytics/pro/bm;->c:I

    if-ge v0, v1, :cond_4f

    .line 121
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bm;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bm;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 124
    :cond_4f
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->o()V

    .line 125
    goto :goto_8a

    .line 106
    :pswitch_53
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 108
    :goto_56
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object p1

    .line 109
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v0, :cond_63

    .line 110
    nop

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 116
    goto :goto_8a

    .line 112
    :cond_63
    iget-byte p1, p1, Lcom/umeng/analytics/pro/bk;->b:B

    add-int/lit8 v0, p2, -0x1

    :try_start_67
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;BI)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_93

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->m()V

    .line 114
    goto :goto_56

    .line 102
    :pswitch_6e
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->A()Ljava/nio/ByteBuffer;

    .line 103
    goto :goto_8a

    .line 94
    :pswitch_72
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->x()J

    .line 95
    goto :goto_8a

    .line 90
    :pswitch_76
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->w()I

    .line 91
    goto :goto_8a

    .line 86
    :pswitch_7a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->v()S

    .line 87
    goto :goto_8a

    .line 98
    :pswitch_7e
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->y()D

    .line 99
    goto :goto_8a

    .line 82
    :pswitch_82
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->u()B

    .line 83
    goto :goto_8a

    .line 78
    :pswitch_86
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bp;->t()Z

    .line 79
    nop

    .line 146
    :goto_8a
    return-void

    .line 74
    :cond_8b
    new-instance p0, Lcom/umeng/analytics/pro/aw;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :catchall_93
    move-exception p0

    goto :goto_96

    :goto_95
    throw p0

    :goto_96
    goto :goto_95

    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_6
        :pswitch_7a
        :pswitch_6
        :pswitch_76
        :pswitch_6
        :pswitch_72
        :pswitch_6e
        :pswitch_53
        :pswitch_37
        :pswitch_20
        :pswitch_8
    .end packed-switch
.end method
