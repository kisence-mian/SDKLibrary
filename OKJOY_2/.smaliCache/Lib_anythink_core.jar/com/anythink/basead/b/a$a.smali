.class public final Lcom/anythink/basead/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "pkg"

.field public static final B:Ljava/lang/String; = "cap"

.field public static final C:Ljava/lang/String; = "pacing"

.field public static final D:Ljava/lang/String; = "offer_type"

.field public static final E:Ljava/lang/String; = "update_time"

.field public static final F:Ljava/lang/String; = "click_mode"

.field public static final G:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS my_offer_info (topon_pl_id TEXT,offer_id TEXT,creative_id TEXT,title TEXT,desc TEXT,icon_url TEXT,image_url TEXT,endcard_image_url TEXT,adchoice_url TEXT,cta TEXT,video_url TEXT,click_type INTEGER,preview_url TEXT,deeplink_url TEXT,click_url TEXT,notice_url TEXT,video_start_tk_url TEXT,video_25_tk_url TEXT,video_50_tk_url TEXT,video_75_tk_url TEXT,video_end_tk_url TEXT,endcard_show_tk_url TEXT,endcard_close_tk_url TEXT,impression_tk_url TEXT,click_tk_url TEXT,pkg TEXT,cap INTEGER,pacing INTEGER,offer_type INTERGR,update_time INTEGER )"

.field public static final H:Ljava/lang/String; = "alter table my_offer_info add column click_mode INTEGER"

.field public static final a:Ljava/lang/String; = "my_offer_info"

.field public static final b:Ljava/lang/String; = "topon_pl_id"

.field public static final c:Ljava/lang/String; = "offer_id"

.field public static final d:Ljava/lang/String; = "creative_id"

.field public static final e:Ljava/lang/String; = "title"

.field public static final f:Ljava/lang/String; = "desc"

.field public static final g:Ljava/lang/String; = "icon_url"

.field public static final h:Ljava/lang/String; = "image_url"

.field public static final i:Ljava/lang/String; = "endcard_image_url"

.field public static final j:Ljava/lang/String; = "adchoice_url"

.field public static final k:Ljava/lang/String; = "cta"

.field public static final l:Ljava/lang/String; = "video_url"

.field public static final m:Ljava/lang/String; = "click_type"

.field public static final n:Ljava/lang/String; = "preview_url"

.field public static final o:Ljava/lang/String; = "deeplink_url"

.field public static final p:Ljava/lang/String; = "click_url"

.field public static final q:Ljava/lang/String; = "notice_url"

.field public static final r:Ljava/lang/String; = "video_start_tk_url"

.field public static final s:Ljava/lang/String; = "video_25_tk_url"

.field public static final t:Ljava/lang/String; = "video_50_tk_url"

.field public static final u:Ljava/lang/String; = "video_75_tk_url"

.field public static final v:Ljava/lang/String; = "video_end_tk_url"

.field public static final w:Ljava/lang/String; = "endcard_show_tk_url"

.field public static final x:Ljava/lang/String; = "endcard_close_tk_url"

.field public static final y:Ljava/lang/String; = "impression_tk_url"

.field public static final z:Ljava/lang/String; = "click_tk_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
