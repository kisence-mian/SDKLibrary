.class abstract Lcom/bytedance/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field protected volatile a:Lcom/bytedance/a/g$a;

.field protected volatile b:Lcom/bytedance/a/g$c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Lcom/bytedance/a/g$b;
    .registers 4

    .prologue
    .line 121
    packed-switch p2, :pswitch_data_14

    .line 131
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 123
    :pswitch_5
    invoke-static {p0, p1}, Lcom/bytedance/a/f;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/f;

    move-result-object v0

    goto :goto_4

    .line 125
    :pswitch_a
    invoke-static {p0, p1}, Lcom/bytedance/a/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/i;

    move-result-object v0

    goto :goto_4

    .line 127
    :pswitch_f
    invoke-static {p0, p1}, Lcom/bytedance/a/h;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/h;

    move-result-object v0

    goto :goto_4

    .line 121
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method abstract a(Landroid/content/Context;)Z
.end method
