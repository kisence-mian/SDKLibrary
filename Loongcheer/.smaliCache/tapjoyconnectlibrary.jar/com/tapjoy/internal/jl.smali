.class public final Lcom/tapjoy/internal/jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/jj;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Lcom/tapjoy/internal/jk$c;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/jk$c;)V
    .registers 11

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/jl;->e:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    .line 62
    iput-object p1, p0, Lcom/tapjoy/internal/jl;->b:Lcom/tapjoy/internal/jk$c;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    .line 64
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->H:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    goto :goto_2e

    .line 66
    :cond_25
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    .line 68
    :goto_2e
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->M:Landroid/app/Notification;

    .line 69
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/tapjoy/internal/jk$c;->g:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 73
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 74
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    .line 75
    :goto_69
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_75

    const/4 v3, 0x1

    goto :goto_76

    :cond_75
    const/4 v3, 0x0

    .line 76
    :goto_76
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-eqz v3, :cond_83

    const/4 v3, 0x1

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    .line 77
    :goto_84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 78
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->c:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->d:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->i:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->e:Landroid/app/PendingIntent;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->f:Landroid/app/PendingIntent;

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b6

    const/4 v7, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v7, 0x0

    .line 84
    :goto_b7
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->h:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lcom/tapjoy/internal/jk$c;->j:I

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lcom/tapjoy/internal/jk$c;->q:I

    iget v7, p1, Lcom/tapjoy/internal/jk$c;->r:I

    iget-boolean v8, p1, Lcom/tapjoy/internal/jk$c;->s:Z

    .line 88
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_df

    .line 90
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 92
    :cond_df
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v2, v6, :cond_15d

    .line 93
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v6, p1, Lcom/tapjoy/internal/jk$c;->o:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v6, p1, Lcom/tapjoy/internal/jk$c;->m:Z

    .line 94
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, p1, Lcom/tapjoy/internal/jk$c;->k:I

    .line 95
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 97
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fe
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/internal/jk$a;

    .line 98
    invoke-direct {p0, v6}, Lcom/tapjoy/internal/jl;->a(Lcom/tapjoy/internal/jk$a;)V

    .line 99
    goto :goto_fe

    .line 101
    :cond_10e
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->A:Landroid/os/Bundle;

    if-eqz v2, :cond_119

    .line 102
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    iget-object v6, p1, Lcom/tapjoy/internal/jk$c;->A:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 104
    :cond_119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_155

    .line 105
    iget-boolean v2, p1, Lcom/tapjoy/internal/jk$c;->w:Z

    if-eqz v2, :cond_128

    .line 106
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    :cond_128
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->t:Ljava/lang/String;

    if-eqz v2, :cond_148

    .line 109
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    iget-object v6, p1, Lcom/tapjoy/internal/jk$c;->t:Ljava/lang/String;

    const-string v8, "android.support.groupKey"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v2, p1, Lcom/tapjoy/internal/jk$c;->u:Z

    if-eqz v2, :cond_141

    .line 111
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    const-string v6, "android.support.isGroupSummary"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_148

    .line 113
    :cond_141
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    const-string v6, "android.support.useSideChannel"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    :cond_148
    :goto_148
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->v:Ljava/lang/String;

    if-eqz v2, :cond_155

    .line 118
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    iget-object v4, p1, Lcom/tapjoy/internal/jk$c;->v:Ljava/lang/String;

    const-string v6, "android.support.sortKey"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_155
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->E:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/tapjoy/internal/jl;->c:Landroid/widget/RemoteViews;

    .line 123
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->F:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/tapjoy/internal/jl;->d:Landroid/widget/RemoteViews;

    .line 125
    :cond_15d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_191

    .line 126
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Lcom/tapjoy/internal/jk$c;->l:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_191

    .line 129
    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->N:Ljava/util/ArrayList;

    if-eqz v2, :cond_191

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_191

    .line 130
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    iget-object v4, p1, Lcom/tapjoy/internal/jk$c;->N:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/tapjoy/internal/jk$c;->N:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 130
    const-string v6, "android.people"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    :cond_191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1b2

    .line 136
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Lcom/tapjoy/internal/jk$c;->w:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Lcom/tapjoy/internal/jk$c;->t:Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v4, p1, Lcom/tapjoy/internal/jk$c;->u:Z

    .line 138
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Lcom/tapjoy/internal/jk$c;->v:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 141
    iget v2, p1, Lcom/tapjoy/internal/jk$c;->L:I

    iput v2, p0, Lcom/tapjoy/internal/jl;->g:I

    .line 143
    :cond_1b2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1f3

    .line 144
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lcom/tapjoy/internal/jk$c;->B:I

    .line 145
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lcom/tapjoy/internal/jk$c;->C:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/jk$c;->D:Landroid/app/Notification;

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 148
    invoke-virtual {v2, v3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 150
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1dd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    iget-object v3, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 152
    goto :goto_1dd

    .line 153
    :cond_1ef
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->G:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/tapjoy/internal/jl;->h:Landroid/widget/RemoteViews;

    .line 155
    :cond_1f3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_227

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->A:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->p:[Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->E:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_211

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->E:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 161
    :cond_211
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_21c

    .line 162
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->F:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 164
    :cond_21c
    iget-object v0, p1, Lcom/tapjoy/internal/jk$c;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_227

    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/tapjoy/internal/jk$c;->G:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 168
    :cond_227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_269

    .line 169
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Lcom/tapjoy/internal/jk$c;->I:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/tapjoy/internal/jk$c;->J:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/tapjoy/internal/jk$c;->K:J

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Lcom/tapjoy/internal/jk$c;->L:I

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 173
    iget-boolean v0, p1, Lcom/tapjoy/internal/jk$c;->y:Z

    if-eqz v0, :cond_24f

    .line 174
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Lcom/tapjoy/internal/jk$c;->x:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 177
    :cond_24f
    iget-object p1, p1, Lcom/tapjoy/internal/jk$c;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_269

    .line 178
    iget-object p1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 184
    :cond_269
    return-void
.end method

.method private static a(Landroid/app/Notification;)V
    .registers 2

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 386
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 387
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 388
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 389
    return-void
.end method

.method private a(Lcom/tapjoy/internal/jk$a;)V
    .registers 7

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5e

    .line 232
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 3795
    iget v1, p1, Lcom/tapjoy/internal/jk$a;->e:I

    .line 233
    nop

    .line 3799
    iget-object v2, p1, Lcom/tapjoy/internal/jk$a;->f:Ljava/lang/CharSequence;

    .line 233
    nop

    .line 3803
    iget-object v3, p1, Lcom/tapjoy/internal/jk$a;->g:Landroid/app/PendingIntent;

    .line 233
    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 234
    nop

    .line 3827
    iget-object v1, p1, Lcom/tapjoy/internal/jk$a;->b:[Lcom/tapjoy/internal/jn;

    .line 234
    if-eqz v1, :cond_2b

    .line 235
    nop

    .line 4827
    iget-object v1, p1, Lcom/tapjoy/internal/jk$a;->b:[Lcom/tapjoy/internal/jn;

    .line 235
    invoke-static {v1}, Lcom/tapjoy/internal/jn;->a([Lcom/tapjoy/internal/jn;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 237
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 241
    :cond_2b
    nop

    .line 5810
    iget-object v1, p1, Lcom/tapjoy/internal/jk$a;->a:Landroid/os/Bundle;

    .line 241
    if-eqz v1, :cond_38

    .line 242
    new-instance v1, Landroid/os/Bundle;

    .line 6810
    iget-object v2, p1, Lcom/tapjoy/internal/jk$a;->a:Landroid/os/Bundle;

    .line 242
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3d

    .line 244
    :cond_38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 246
    :goto_3d
    nop

    .line 6818
    iget-boolean v2, p1, Lcom/tapjoy/internal/jk$a;->d:Z

    .line 246
    const-string v3, "android.support.allowGeneratedReplies"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_51

    .line 249
    nop

    .line 7818
    iget-boolean p1, p1, Lcom/tapjoy/internal/jk$a;->d:Z

    .line 249
    invoke-virtual {v0, p1}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 251
    :cond_51
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 252
    iget-object p1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 253
    return-void

    :cond_5e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6f

    .line 254
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    .line 255
    invoke-static {v1, p1}, Lcom/tapjoy/internal/jm;->a(Landroid/app/Notification$Builder;Lcom/tapjoy/internal/jk$a;)Landroid/os/Bundle;

    move-result-object p1

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_6f
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification$Builder;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public final b()Landroid/app/Notification;
    .registers 10

    .line 192
    iget-object v0, p0, Lcom/tapjoy/internal/jl;->b:Lcom/tapjoy/internal/jk$c;

    iget-object v0, v0, Lcom/tapjoy/internal/jk$c;->n:Lcom/tapjoy/internal/jk$d;

    .line 193
    if-eqz v0, :cond_9

    .line 194
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/jk$d;->a(Lcom/tapjoy/internal/jj;)V

    .line 200
    :cond_9
    nop

    .line 3260
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/16 v3, 0x10

    if-lt v1, v2, :cond_1a

    .line 3261
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto/16 :goto_179

    .line 3262
    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v1, v2, :cond_54

    .line 3263
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3265
    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-eqz v2, :cond_52

    .line 3267
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v5, :cond_3f

    .line 3270
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3273
    :cond_3f
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_52

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v4, :cond_52

    .line 3276
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3280
    :cond_52
    goto/16 :goto_179

    .line 3281
    :cond_54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a5

    .line 3282
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3283
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3284
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_6d

    .line 3285
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3287
    :cond_6d
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_73

    .line 3288
    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3290
    :cond_73
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->h:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_79

    .line 3291
    iput-object v2, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3294
    :cond_79
    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-eqz v2, :cond_a3

    .line 3296
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v5, :cond_90

    .line 3299
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3302
    :cond_90
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_a3

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v4, :cond_a3

    .line 3305
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3308
    :cond_a3
    goto/16 :goto_179

    .line 3309
    :cond_a5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_f0

    .line 3310
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3311
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3312
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_be

    .line 3313
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3315
    :cond_be
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_c4

    .line 3316
    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3319
    :cond_c4
    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-eqz v2, :cond_ee

    .line 3321
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_db

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_db

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v5, :cond_db

    .line 3324
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3327
    :cond_db
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ee

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_ee

    iget v2, p0, Lcom/tapjoy/internal/jl;->g:I

    if-ne v2, v4, :cond_ee

    .line 3330
    invoke-static {v1}, Lcom/tapjoy/internal/jl;->a(Landroid/app/Notification;)V

    .line 3334
    :cond_ee
    goto/16 :goto_179

    .line 3335
    :cond_f0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v4, "android.support.actionExtras"

    if-lt v1, v2, :cond_11f

    .line 3336
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->e:Ljava/util/List;

    .line 3337
    invoke-static {v1}, Lcom/tapjoy/internal/jm;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    .line 3338
    if-eqz v1, :cond_105

    .line 3340
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 3343
    :cond_105
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3344
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3345
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_118

    .line 3346
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3348
    :cond_118
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_11e

    .line 3349
    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3351
    :cond_11e
    goto :goto_179

    .line 3352
    :cond_11f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_173

    .line 3353
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3356
    invoke-static {v1}, Lcom/tapjoy/internal/jk;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 3357
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3358
    iget-object v6, p0, Lcom/tapjoy/internal/jl;->f:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_154

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3359
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_153

    .line 3360
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3362
    :cond_153
    goto :goto_13e

    .line 3363
    :cond_154
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3364
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->e:Ljava/util/List;

    .line 3365
    invoke-static {v2}, Lcom/tapjoy/internal/jm;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3366
    if-eqz v2, :cond_166

    .line 3368
    invoke-static {v1}, Lcom/tapjoy/internal/jk;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 3371
    :cond_166
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_16c

    .line 3372
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3374
    :cond_16c
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_172

    .line 3375
    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3377
    :cond_172
    goto :goto_179

    .line 3380
    :cond_173
    iget-object v1, p0, Lcom/tapjoy/internal/jl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 200
    :goto_179
    nop

    .line 203
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->b:Lcom/tapjoy/internal/jk$c;

    iget-object v2, v2, Lcom/tapjoy/internal/jk$c;->E:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_186

    .line 204
    iget-object v2, p0, Lcom/tapjoy/internal/jl;->b:Lcom/tapjoy/internal/jk$c;

    iget-object v2, v2, Lcom/tapjoy/internal/jk$c;->E:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 206
    :cond_186
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 212
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 220
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_193

    if-eqz v0, :cond_193

    .line 221
    invoke-static {v1}, Lcom/tapjoy/internal/jk;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 227
    :cond_193
    return-object v1
.end method
