.class public Lcom/umeng/analytics/pro/c;
.super Ljava/lang/Object;
.source "UContent.java"


# static fields
.field public static final A:Ljava/lang/String; = "ts"

.field public static final B:Ljava/lang/String; = "locations"

.field public static final C:Ljava/lang/String; = "lat"

.field public static final D:Ljava/lang/String; = "lng"

.field public static final E:Ljava/lang/String; = "ts"

.field public static final F:Ljava/lang/String; = "traffic"

.field public static final G:Ljava/lang/String; = "upload_traffic"

.field public static final H:Ljava/lang/String; = "download_traffic"

.field public static final I:Ljava/lang/String; = "activate_msg"

.field public static final J:Ljava/lang/String; = "ts"

.field public static final K:Ljava/lang/String; = "group_info"

.field public static final L:Ljava/lang/String; = "active_user"

.field public static final M:Ljava/lang/String; = "provider"

.field public static final N:Ljava/lang/String; = "puid"

.field public static final O:Ljava/lang/String; = "error"

.field public static final P:Ljava/lang/String; = "ts"

.field public static final Q:Ljava/lang/String; = "error_source"

.field public static final R:Ljava/lang/String; = "context"

.field public static final S:Ljava/lang/String; = "ekv"

.field public static final T:Ljava/lang/String; = "gkv"

.field public static final U:Ljava/lang/String; = "id"

.field public static final V:Ljava/lang/String; = "ts"

.field public static final W:Ljava/lang/String; = "du"

.field public static final X:Ljava/lang/String; = "userlevel"

.field public static final Y:Ljava/lang/String; = "$st_fl"

.field public static final Z:Ljava/lang/String; = "dplus"

.field public static final a:Ljava/lang/String; = "appkey"

.field public static final aA:Ljava/lang/String; = "userlevel"

.field public static final aB:Ljava/lang/String; = "eof"

.field public static final aC:Ljava/lang/String; = "exception"

.field public static final aD:Ljava/lang/String; = "_$!deep_link"

.field public static final aE:Ljava/lang/String; = "_$!link"

.field public static final aF:[Ljava/lang/String;

.field public static final aG:[Ljava/lang/String;

.field public static final aH:[Ljava/lang/String;

.field public static final aa:Ljava/lang/String; = "analytics"

.field public static final ab:Ljava/lang/String; = "push"

.field public static final ac:Ljava/lang/String; = "share"

.field public static final ad:Ljava/lang/String; = "content"

.field public static final ae:Ljava/lang/String; = "header"

.field public static final af:Ljava/lang/String; = "ds"

.field public static final ag:Ljava/lang/String; = "pn"

.field public static final ah:Ljava/lang/String; = "pro_ver"

.field public static final ai:Ljava/lang/String; = "1.0.0"

.field public static final aj:Ljava/lang/String; = "atm"

.field public static final ak:Ljava/lang/String; = "st"

.field public static final al:Ljava/lang/String; = "ekv_bl"

.field public static final am:Ljava/lang/String; = "ekv_wl"

.field public static final an:Ljava/lang/String; = "ekv_bl_ver"

.field public static final ao:Ljava/lang/String; = "ekv_wl_ver"

.field public static final ap:Ljava/lang/String; = "$ekv_bl_ver"

.field public static final aq:Ljava/lang/String; = "$ekv_wl_ver"

.field public static final ar:Ljava/lang/String; = "events"

.field public static final as:Ljava/lang/String; = "_$!ts"

.field public static final at:Ljava/lang/String; = "_$!id"

.field public static final au:Ljava/lang/String; = "_$sp"

.field public static final av:Ljava/lang/String; = "_$pp"

.field public static final aw:Ljava/lang/String; = "session"

.field public static final ax:Ljava/lang/String; = "pageview"

.field public static final ay:Ljava/lang/String; = "versioncode"

.field public static final az:Ljava/lang/String; = "versionname"

.field public static final b:Ljava/lang/String; = "channel"

.field public static final c:Ljava/lang/String; = "secret"

.field public static final d:Ljava/lang/String; = "app_version"

.field public static final e:Ljava/lang/String; = "version_code"

.field public static final f:Ljava/lang/String; = "wrapper_type"

.field public static final g:Ljava/lang/String; = "wrapper_version"

.field public static final h:Ljava/lang/String; = "sdk_version"

.field public static final i:Ljava/lang/String; = "vertical_type"

.field public static final j:Ljava/lang/String; = "device_id"

.field public static final k:Ljava/lang/String; = "device_model"

.field public static final l:Ljava/lang/String; = "$pr_ve"

.field public static final m:Ljava/lang/String; = "$ud_da"

.field public static final n:Ljava/lang/String; = "sessions"

.field public static final o:Ljava/lang/String; = "id"

.field public static final p:Ljava/lang/String; = "start_time"

.field public static final q:Ljava/lang/String; = "end_time"

.field public static final r:Ljava/lang/String; = "duration"

.field public static final s:Ljava/lang/String; = "duration_old"

.field public static final t:Ljava/lang/String; = "pages"

.field public static final u:Ljava/lang/String; = "autopages"

.field public static final v:Ljava/lang/String; = "page_name"

.field public static final w:Ljava/lang/String; = "duration"

.field public static final x:Ljava/lang/String; = "page_start"

.field public static final y:Ljava/lang/String; = "type"

.field public static final z:Ljava/lang/String; = "$page_num"


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 148
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_$!deep_link"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_$!link"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/umeng/analytics/pro/c;->aF:[Ljava/lang/String;

    .line 150
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v2, v3

    const-string v5, "ts"

    aput-object v5, v2, v4

    const-string v5, "du"

    aput-object v5, v2, v0

    const/4 v5, 0x3

    const-string v6, "$st_fl"

    aput-object v6, v2, v5

    const-string v7, "ds"

    const/4 v8, 0x4

    aput-object v7, v2, v8

    const-string v7, "pn"

    const/4 v9, 0x5

    aput-object v7, v2, v9

    const-string v7, "_$sp"

    const/4 v10, 0x6

    aput-object v7, v2, v10

    sput-object v2, Lcom/umeng/analytics/pro/c;->aG:[Ljava/lang/String;

    .line 158
    const/16 v2, 0x26

    new-array v2, v2, [Ljava/lang/String;

    const-string v7, "_$!ts"

    aput-object v7, v2, v3

    const-string v3, "_$!id"

    aput-object v3, v2, v4

    const-string v3, "_$!du"

    aput-object v3, v2, v0

    const-string v0, "_$!c"

    aput-object v0, v2, v5

    aput-object v6, v2, v8

    const-string v0, "_$!sp"

    aput-object v0, v2, v9

    const-string v0, "event_name"

    aput-object v0, v2, v10

    const-string v0, "token"

    aput-object v0, v2, v1

    const/16 v0, 0x8

    const-string v1, "time"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "ip"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "country"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "region"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "city"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "browser"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "os"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "device_brand"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "device_version"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "device_type"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "screen_width"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "screen_height"

    aput-object v1, v2, v0

    const/16 v0, 0x14

    const-string v1, "referrer"

    aput-object v1, v2, v0

    const/16 v0, 0x15

    const-string v1, "referrer_domain"

    aput-object v1, v2, v0

    const/16 v0, 0x16

    const-string v1, "initial_referrer"

    aput-object v1, v2, v0

    const/16 v0, 0x17

    const-string v1, "initial_referrer_domain"

    aput-object v1, v2, v0

    const/16 v0, 0x18

    const-string v1, "initial_view_time"

    aput-object v1, v2, v0

    const/16 v0, 0x19

    const-string v1, "search_engine"

    aput-object v1, v2, v0

    const/16 v0, 0x1a

    const-string v1, "keyword"

    aput-object v1, v2, v0

    const/16 v0, 0x1b

    const-string v1, "ali_lib"

    aput-object v1, v2, v0

    const/16 v0, 0x1c

    const-string v1, "utm_source"

    aput-object v1, v2, v0

    const/16 v0, 0x1d

    const-string v1, "utm_medium"

    aput-object v1, v2, v0

    const/16 v0, 0x1e

    const-string v1, "utm_term"

    aput-object v1, v2, v0

    const/16 v0, 0x1f

    const-string v1, "utm_content"

    aput-object v1, v2, v0

    const/16 v0, 0x20

    const-string v1, "utm_campaign"

    aput-object v1, v2, v0

    const/16 v0, 0x21

    const-string v1, "date"

    aput-object v1, v2, v0

    const/16 v0, 0x22

    const-string v1, "hour"

    aput-object v1, v2, v0

    const/16 v0, 0x23

    const-string v1, "minute"

    aput-object v1, v2, v0

    const/16 v0, 0x24

    const-string v1, "app_version"

    aput-object v1, v2, v0

    const/16 v0, 0x25

    const-string v1, "sp"

    aput-object v1, v2, v0

    sput-object v2, Lcom/umeng/analytics/pro/c;->aH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
