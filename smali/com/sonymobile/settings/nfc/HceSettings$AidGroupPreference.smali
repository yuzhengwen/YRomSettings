.class Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
.super Landroid/preference/Preference;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AidGroupPreference"
.end annotation


# instance fields
.field private final listener:Landroid/view/View$OnClickListener;

.field private final service:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/content/ComponentName;
    .param p4    # Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0f00f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    # getter for: Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;
    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceSettings;->access$100(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0f0096

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    # getter for: Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;
    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceSettings;->access$100(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getCheckBoxState(Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
