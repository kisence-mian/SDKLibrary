.class Lcom/sigmob/sdk/base/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/o;


# static fields
.field private static final a:Ljava/lang/String; = "mp_tmpl_advertising_id"

.field private static final b:Ljava/lang/String; = "mp_tmpl_do_not_track"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "mp_tmpl_advertising_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "mp_tmpl_do_not_track"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_10
    return-object p1
.end method
