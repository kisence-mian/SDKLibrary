.class public Lcom/pgl/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xff

    sput v0, Lcom/pgl/a/a/a;->a:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget v0, Lcom/pgl/a/a/a;->a:I

    packed-switch v0, :pswitch_data_c

    const-string v0, ""

    return-object v0

    :pswitch_8
    const-string v0, "https://bds.snssdk.com"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public static declared-synchronized a(I)V
    .registers 2

    const-class v0, Lcom/pgl/a/a/a;

    monitor-enter v0

    :try_start_3
    sput p0, Lcom/pgl/a/a/a;->a:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget v0, Lcom/pgl/a/a/a;->a:I

    packed-switch v0, :pswitch_data_c

    const-string v0, ""

    return-object v0

    :pswitch_8
    const-string v0, "https://sdfp.snssdk.com"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
