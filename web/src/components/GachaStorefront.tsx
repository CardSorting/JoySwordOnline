'use client';

import React, { useState, useEffect } from 'react';

type Tab = 'gacha' | 'topup' | 'monthly' | 'starlight' | 'bundles' | 'vip' | 'battlepass';

interface TopUpTier {
  id: number;
  usd: string;
  baseCash: number;
  bonusCash: number;
  name: string;
  popular?: boolean;
  bestValue?: boolean;
}

const TOPUP_TIERS: TopUpTier[] = [
  { id: 1, usd: '$0.99', baseCash: 1000, bonusCash: 1000, name: 'Pouch of Cash' },
  { id: 2, usd: '$4.99', baseCash: 5000, bonusCash: 5000, name: 'Sack of Cash', popular: true },
  { id: 3, usd: '$14.99', baseCash: 15000, bonusCash: 15000, name: 'Chest of Cash' },
  { id: 4, usd: '$29.99', baseCash: 30000, bonusCash: 30000, name: 'Crate of Cash' },
  { id: 5, usd: '$49.99', baseCash: 50000, bonusCash: 50000, name: 'Vault of Cash', bestValue: true },
  { id: 6, usd: '$99.99', baseCash: 100000, bonusCash: 100000, name: 'Treasury of Cash' },
];

const VIP_REWARDS = [
  { tier: 1, ed: '50M ED', burners: 10, amulet: 'None', discount: '2% Fee Off', desc: 'VIP 1: Novice Supporter' },
  { tier: 2, ed: '75M ED', burners: 15, amulet: 'None', discount: '3% Fee Off', desc: 'VIP 2: Adventurer' },
  { tier: 3, ed: '100M ED', burners: 20, amulet: 'Magic Amulet Lv.9', discount: '4% Fee Off', desc: 'VIP 3: Knight Commander' },
  { tier: 4, ed: '150M ED', burners: 25, amulet: 'None', discount: '5% Fee Off', desc: 'VIP 4: Royal Champion' },
  { tier: 5, ed: '250M ED', burners: 30, amulet: 'Magic Amulet Lv.10', discount: '6% Fee Off', desc: 'VIP 5: Hero of Elrios' },
  { tier: 6, ed: '350M ED', burners: 40, amulet: 'None', discount: '7% Fee Off', desc: 'VIP 6: Paragon Guardian' },
  { tier: 7, ed: '500M ED', burners: 50, amulet: 'Magic Amulet Lv.11', discount: '8% Fee Off', desc: 'VIP 7: Grand Sovereign' },
  { tier: 8, ed: '650M ED', burners: 60, amulet: 'None', discount: '9% Fee Off', desc: 'VIP 8: Celestial Patron' },
  { tier: 9, ed: '800M ED', burners: 75, amulet: 'Rare Accessory Choice', discount: '10% Fee Off', desc: 'VIP 9: Mythic Benefactor' },
  { tier: 10, ed: '1 Billion ED', burners: 100, amulet: 'Magic Amulet Lv.12', discount: '12% Fee Off', desc: 'VIP 10: Supreme Immortal' },
  { tier: 11, ed: '1.25B ED', burners: 120, amulet: 'Mythic Amulet Box', discount: '14% Fee Off', desc: 'VIP 11: Astral Monarch' },
  { tier: 12, ed: '1.5B ED', burners: 150, amulet: 'Archangel Set Box', discount: '16% Fee Off', desc: 'VIP 12: Sovereign Emperor' },
  { tier: 13, ed: '2 Billion ED', burners: 200, amulet: 'Magic Amulet Lv.12', discount: '18% Fee Off', desc: 'VIP 13: Celestial Overlord' },
  { tier: 14, ed: '2.5B ED', burners: 250, amulet: 'Archangel Complete Box', discount: '20% Fee Off', desc: 'VIP 14: Eternal Titan' },
  { tier: 15, ed: '3 Billion ED', burners: 300, amulet: 'Supreme Immortal Crest', discount: '25% FREE Fee', desc: 'VIP 15: Supreme Deity' },
];

const FEATURED_BUNDLES = [
  {
    id: 'starter',
    title: 'Novice Starter Pack',
    discount: '80% OFF',
    price: 3000,
    items: ['Archangel Weapon Cube', '5x Ice Burners', 'Magic Amulet Lv.9', '10,000,000 ED'],
    gradient: 'from-amber-500/20 via-rose-500/20 to-purple-500/20',
    badgeColor: 'border-amber-500/30 text-amber-300 bg-amber-500/10',
  },
  {
    id: 'weekly',
    title: 'Weekly Ice Burner 10-Pull Box',
    discount: '50% VALUE',
    price: 10000,
    items: ['10x Ice Burners', '+5 Bonus Mileage Tokens', 'Complete Recovery Potion x50'],
    gradient: 'from-cyan-500/20 via-blue-500/20 to-indigo-500/20',
    badgeColor: 'border-cyan-500/30 text-cyan-300 bg-cyan-500/10',
  },
  {
    id: 'monthly',
    title: 'Monthly Enhancement Master Chest',
    discount: 'LIMITED',
    price: 45000,
    items: ['Magic Amulet Lv.10', '50x Fluorite Ore', '50x Blessed Restoration Scrolls'],
    gradient: 'from-emerald-500/20 via-teal-500/20 to-cyan-500/20',
    badgeColor: 'border-emerald-500/30 text-emerald-300 bg-emerald-500/10',
  },
  {
    id: 'breakthrough',
    title: 'Mythic Breakthrough Core Pack',
    discount: 'NEW HOT',
    price: 80000,
    items: ['Magic Amulet Lv.11 Upgrade', '100x Fluorite Ore', 'Archangel Wings Accessory Box', '50,000,000 ED'],
    gradient: 'from-purple-500/20 via-fuchsia-500/20 to-rose-500/20',
    badgeColor: 'border-purple-500/30 text-purple-300 bg-purple-500/10',
  },
];

const STARLIGHT_REDEEM_ITEMS = [
  { cost: 100, name: 'Exclusive Starlight Aura Effect Title', type: 'Prestige Cosmetic' },
  { cost: 250, name: 'Monthly 10-Pull Ice Burner Voucher', type: 'Pull Pack' },
  { cost: 500, name: 'Magic Amulet Lv.11 Upgrade Chest', type: 'Enhancement' },
  { cost: 1000, name: 'Magic Amulet Lv.12 Mythic Core', type: 'Endgame Upgrade' },
];

export const GachaStorefront: React.FC = () => {
  const [activeTab, setActiveTab] = useState<Tab>('gacha');
  const [userCashBalance, setUserCashBalance] = useState<number>(36000);
  const [pityCount, setPityCount] = useState<number>(14);
  const [mileageTokens, setMileageTokens] = useState<number>(42);
  const [starlightBalance, setStarlightBalance] = useState<number>(150);
  const [hasRateUpGuarantee, setHasRateUpGuarantee] = useState<boolean>(true);
  const [lastPullResult, setLastPullResult] = useState<string | null>(null);
  const [claimedTiers, setClaimedTiers] = useState<Record<number, boolean>>({});
  const [monthlyPassDays, setMonthlyPassDays] = useState<number>(27);
  const [monthlyClaimedToday, setMonthlyClaimedToday] = useState<boolean>(false);
  const [isSyncing, setIsSyncing] = useState<boolean>(false);

  // Helper to sync balance to state and broadcast custom window event
  const updateBalanceState = (cash?: number, starlight?: number, claimed?: Record<number, boolean>) => {
    if (typeof cash === 'number') {
      setUserCashBalance(cash);
      if (typeof window !== 'undefined') {
        window.dispatchEvent(new CustomEvent('joysword:cash_updated', { detail: { cashBalance: cash } }));
      }
    }
    if (typeof starlight === 'number') {
      setStarlightBalance(starlight);
    }
    if (claimed) {
      setClaimedTiers(claimed);
    }
  };

  // Auto-sync status from backend API on mount
  useEffect(() => {
    let isMounted = true;
    async function syncGachaStatus() {
      try {
        const res = await fetch('/api/account/gacha/status');
        if (res.ok) {
          const data = await res.json();
          if (isMounted && typeof data.cashBalance === 'number') {
            updateBalanceState(data.cashBalance, data.starlightBalance ?? 150, data.claimedTiers ?? {});
          }
        }
      } catch {
        // Fallback to local demo balance if offline or unauthenticated
      }
    }
    syncGachaStatus();
    return () => { isMounted = false; };
  }, []);

  const handleSinglePull = async () => {
    if (userCashBalance < 1200) {
      setLastPullResult('❌ Insufficient Cash balance! Top up to continue pulling.');
      return;
    }
    setIsSyncing(true);
    // Optimistic local update
    const optimisticBalance = userCashBalance - 1200;
    updateBalanceState(optimisticBalance, starlightBalance + 120);
    const nextPity = pityCount + 1;
    setPityCount(nextPity);
    setMileageTokens(prev => prev + 1);

    try {
      const res = await fetch('/api/account/gacha/pull', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ count: 1 }),
      });
      if (res.ok) {
        const data = await res.json();
        if (typeof data.remainingCash === 'number') {
          updateBalanceState(data.remainingCash);
        }
      }
    } catch {
      // Retain optimistic state if offline
    } finally {
      setIsSyncing(false);
    }

    const roll = Math.random() * 100;
    if (nextPity >= 90 || roll < 0.8) {
      if (hasRateUpGuarantee || Math.random() < 0.5) {
        setLastPullResult('★ FEATURED SSR GUARANTEED: Archangel Wings & Crown Set Box! ★ (-1,200 Cash)');
        setHasRateUpGuarantee(false);
      } else {
        setLastPullResult('★ 50/50 SSR PULL: Archdevil Costume Piece (Next SSR 100% Rate-Up Guaranteed!) (-1,200 Cash)');
        setHasRateUpGuarantee(true);
      }
      setPityCount(0);
    } else if (roll < 6.8) {
      setLastPullResult('★ SR RARE: Magic Amulet Lv.10 (+10 Guaranteed) (-1,200 Cash)');
    } else {
      setLastPullResult('R COMMON: Complete Recovery Potion (x5) + 1 Mileage Token + 120 Starlight Tokens (-1,200 Cash)');
    }
  };

  const handleTenPull = async () => {
    if (userCashBalance < 10000) {
      setLastPullResult('❌ Insufficient Cash balance for 10-Pull! Top up to continue.');
      return;
    }
    setIsSyncing(true);
    // Optimistic local update
    const optimisticBalance = userCashBalance - 10000;
    updateBalanceState(optimisticBalance, starlightBalance + 1000);
    setPityCount(prev => prev + 10);
    setMileageTokens(prev => prev + 10);

    try {
      const res = await fetch('/api/account/gacha/pull', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ count: 10 }),
      });
      if (res.ok) {
        const data = await res.json();
        if (typeof data.remainingCash === 'number') {
          updateBalanceState(data.remainingCash);
        }
      }
    } catch {
      // Retain optimistic state if offline
    } finally {
      setIsSyncing(false);
    }

    setLastPullResult('10-PULL COMPLETE! Deducted 10,000 Cash → Received 10x Items + 10 Mileage Tokens + 1,000 Starlight Tokens!');
  };

  const handleSimulateTopUp = async (id: number) => {
    const tier = TOPUP_TIERS.find(t => t.id === id)!;
    const isFirst = !claimedTiers[id];
    const gainedCash = tier.baseCash + (isFirst ? tier.bonusCash : 0);

    setIsSyncing(true);
    const newClaimed = { ...claimedTiers, [id]: true };
    const newCash = userCashBalance + gainedCash;
    const newStarlight = starlightBalance + Math.floor(gainedCash / 10);
    updateBalanceState(newCash, newStarlight, newClaimed);

    try {
      const res = await fetch('/api/account/gacha/topup', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ tierId: id }),
      });
      if (res.ok) {
        const data = await res.json();
        if (typeof data.newCashBalance === 'number') {
          updateBalanceState(data.newCashBalance, data.status?.starlightBalance, data.status?.claimedTiers);
        }
      }
    } catch {
      // Retain optimistic state if offline
    } finally {
      setIsSyncing(false);
    }

    setLastPullResult(`✅ Top-Up Successful! Added +${gainedCash.toLocaleString()} Cash to balance (${isFirst ? '2x First Bonus' : 'Standard Tier'}).`);
  };

  const handleClaimMonthlyPass = async () => {
    if (monthlyClaimedToday) return;
    setIsSyncing(true);
    setMonthlyClaimedToday(true);
    updateBalanceState(userCashBalance + 300);

    try {
      const res = await fetch('/api/account/gacha/monthly/claim', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
      });
      const data = await res.json();
      if (res.ok) {
        if (typeof data.status?.cashBalance === 'number') {
          updateBalanceState(data.status.cashBalance);
        }
        setLastPullResult(`🌙 Monthly Express Pass Claimed! Received +300 Daily Cash + 5,000,000 ED! (${monthlyPassDays} Days Left)`);
      } else {
        setLastPullResult(`ℹ️ Monthly Express Pass: ${data.message || 'Already claimed today.'}`);
      }
    } catch {
      setLastPullResult(`🌙 Monthly Express Pass Claimed! (+300 Cash Added - Demo Mode)`);
    } finally {
      setIsSyncing(false);
    }
  };

  const handleClaimStarlight = async (item: typeof STARLIGHT_REDEEM_ITEMS[0], index: number) => {
    if (starlightBalance < item.cost) return;
    setIsSyncing(true);
    updateBalanceState(userCashBalance, starlightBalance - item.cost);

    try {
      const res = await fetch('/api/account/gacha/starlight/claim', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ rewardId: index + 1 }),
      });
      if (res.ok) {
        const data = await res.json();
        if (typeof data.starlightBalance === 'number') {
          updateBalanceState(userCashBalance, data.starlightBalance);
        }
      }
    } catch {
      // Retain optimistic state if offline
    } finally {
      setIsSyncing(false);
    }

    setLastPullResult(`✅ Starlight Reward Claimed: ${item.name} (-${item.cost} Starlight Tokens).`);
  };

  const handlePurchaseBundle = async (bundleIndex: number) => {
    const bundle = FEATURED_BUNDLES[bundleIndex];
    if (userCashBalance < bundle.price) {
      setLastPullResult(`❌ Insufficient Cash for ${bundle.title}! Top-up required.`);
      return;
    }

    setIsSyncing(true);
    updateBalanceState(userCashBalance - bundle.price);

    try {
      const res = await fetch('/api/account/gacha/bundle/buy', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bundleId: bundle.id }),
      });
      if (res.ok) {
        const data = await res.json();
        if (typeof data.remainingCash === 'number') {
          updateBalanceState(data.remainingCash);
        }
      }
    } catch {
      // Retain optimistic state if offline
    } finally {
      setIsSyncing(false);
    }

    setLastPullResult(`✅ Package Purchased: ${bundle.title} (-${bundle.price.toLocaleString()} Cash). Items delivered!`);
  };

  const handleClaimVipTier = async (tier: number) => {
    setIsSyncing(true);
    try {
      const res = await fetch('/api/account/gacha/vip/claim', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ targetVip: tier }),
      });
      const data = await res.json();
      if (res.ok) {
        setLastPullResult(`★ VIP Tier ${tier} Rewards Claimed: ${data.rewardED?.toLocaleString()} ED + ${data.iceBurnerCount}x Ice Burners!`);
      } else {
        setLastPullResult(`ℹ️ VIP Tier ${tier}: ${data.message || 'Already claimed or locked.'}`);
      }
    } catch {
      setLastPullResult(`★ VIP Tier ${tier} Rewards Claimed! (Demo Mode)`);
    } finally {
      setIsSyncing(false);
    }
  };

  const handleClaimBattlePass = async (tier: number) => {
    setIsSyncing(true);
    try {
      const res = await fetch('/api/account/gacha/battlepass/claim', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ targetTier: tier }),
      });
      const data = await res.json();
      if (res.ok) {
        setLastPullResult(`🏆 Battle Pass Tier ${tier} Claimed: ${data.rewardED?.toLocaleString()} ED + ${data.iceBurnerCount}x Ice Burners!`);
      } else {
        setLastPullResult(`ℹ️ Battle Pass Tier ${tier}: ${data.message || 'Already claimed or locked.'}`);
      }
    } catch {
      setLastPullResult(`🏆 Battle Pass Tier ${tier} Claimed! (Demo Mode)`);
    } finally {
      setIsSyncing(false);
    }
  };

  return (
    <section className="relative my-12 overflow-hidden rounded-3xl border border-white/10 bg-slate-950/80 p-6 backdrop-blur-xl shadow-2xl md:p-10">
      {/* Dynamic Background Atmospheric Glows */}
      <div className="pointer-events-none absolute -top-40 -left-40 h-96 w-96 rounded-full bg-cyan-500/10 blur-3xl" />
      <div className="pointer-events-none absolute -bottom-40 -right-40 h-96 w-96 rounded-full bg-purple-500/10 blur-3xl" />
      <div className="pointer-events-none absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 h-80 w-80 rounded-full bg-amber-500/5 blur-3xl" />

      {/* Real-time Status Header */}
      <div className="mb-8 flex flex-col justify-between gap-6 md:flex-row md:items-center">
        <div>
          <div className="flex flex-wrap items-center gap-2">
            <span className="inline-flex items-center gap-1.5 rounded-full border border-amber-500/30 bg-amber-500/10 px-3 py-1 text-xs font-semibold uppercase tracking-wider text-amber-400">
              ★ Modern Gacha Cash Shop Engine
            </span>
            <span className="inline-flex items-center gap-1.5 rounded-full border border-emerald-500/30 bg-emerald-500/10 px-3 py-1 text-xs font-semibold uppercase tracking-wider text-emerald-300">
              Annual 2x Reset Active
            </span>
            <span className="inline-flex items-center gap-1.5 rounded-full border border-cyan-500/40 bg-cyan-500/20 px-3 py-1 text-xs font-extrabold uppercase tracking-wider text-cyan-300 shadow-lg shadow-cyan-500/20">
              Cash Balance: {userCashBalance.toLocaleString()}
            </span>
            {isSyncing && (
              <span className="inline-flex items-center gap-1.5 rounded-full border border-purple-500/30 bg-purple-500/10 px-2.5 py-0.5 text-[11px] font-bold text-purple-300 animate-pulse">
                ↻ Auto-Syncing DB...
              </span>
            )}
          </div>
          <h2 className="mt-2 text-3xl font-extrabold tracking-tight text-white md:text-4xl">
            Elrios Central Market & Banner Hub
          </h2>
          <p className="mt-1 text-sm text-slate-400">
            50/50 Banner Guarantee, 90-Pull Soft/Hard Pity, 10% Starlight Cashback, Express Monthly Supply & VIP 15 System
          </p>
        </div>

        {/* Navigation Tabs Bar */}
        <div className="flex flex-wrap gap-1.5 rounded-2xl border border-white/10 bg-white/5 p-1.5 backdrop-blur-md">
          {(
            [
              { id: 'gacha', label: 'Gacha Banner' },
              { id: 'topup', label: '2x Top-Up Store' },
              { id: 'monthly', label: 'Monthly Pass' },
              { id: 'starlight', label: 'Starlight Shop' },
              { id: 'bundles', label: 'Growth Bundles' },
              { id: 'vip', label: 'VIP 15 System' },
              { id: 'battlepass', label: 'Battle Pass' },
            ] as const
          ).map((tab) => (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id)}
              className={`rounded-xl px-3 py-1.5 text-xs font-bold transition-all duration-300 ${
                activeTab === tab.id
                  ? 'bg-gradient-to-r from-cyan-500 via-blue-600 to-purple-600 text-white shadow-lg shadow-cyan-500/25 scale-[1.02]'
                  : 'text-slate-400 hover:bg-white/5 hover:text-white'
              }`}
            >
              {tab.label}
            </button>
          ))}
        </div>
      </div>

      {/* TAB CONTENT 1: GACHA BANNER SIMULATOR */}
      {activeTab === 'gacha' && (
        <div className="grid gap-8 lg:grid-cols-12">
          {/* Main Gacha Banner Card */}
          <div className="relative overflow-hidden rounded-2xl border border-cyan-500/30 bg-gradient-to-br from-slate-900 via-indigo-950/40 to-slate-950 p-6 lg:col-span-7">
            <div className="flex items-center justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-xs font-bold uppercase tracking-wider text-cyan-400">Featured Rate-Up Banner</span>
                <h3 className="text-xl font-extrabold text-white">Archangel & Celestial Sovereign Ice Burner</h3>
              </div>
              <div className="flex flex-col items-end gap-1">
                <span className="rounded-full bg-cyan-500/20 px-3 py-0.5 text-xs font-bold text-cyan-300 border border-cyan-500/30">
                  0.80% SSR Rate
                </span>
                <span className={`text-[10px] font-black uppercase px-2.5 py-0.5 rounded-full ${
                  hasRateUpGuarantee ? 'bg-amber-500/20 text-amber-300 border border-amber-500/30' : 'bg-slate-800 text-slate-400'
                }`}>
                  {hasRateUpGuarantee ? '★ 100% Featured Rate-Up' : '50/50 Rate-Up Status'}
                </span>
              </div>
            </div>

            {/* Pity Progress Meter */}
            <div className="my-6 rounded-xl border border-white/10 bg-white/5 p-4 backdrop-blur-md">
              <div className="flex justify-between text-xs font-semibold text-slate-300">
                <span>Guaranteed SSR Hard Pity</span>
                <span className="text-cyan-400 font-bold">{pityCount} / 90 Pulls</span>
              </div>
              <div className="mt-2 h-3 overflow-hidden rounded-full bg-slate-800">
                <div
                  className="h-full bg-gradient-to-r from-cyan-500 via-blue-500 to-purple-500 transition-all duration-500"
                  style={{ width: `${Math.min(100, (pityCount / 90) * 100)}%` }}
                />
              </div>
              <div className="mt-3 flex justify-between text-[11px] text-slate-400">
                <span>Soft Pity Escalation begins at 50 pulls</span>
                <span className="text-amber-400 font-bold">Spark Tokens: {mileageTokens}</span>
              </div>
            </div>

            {/* Pull Action Buttons */}
            <div className="flex flex-col gap-3 sm:flex-row">
              <button
                onClick={handleSinglePull}
                className="flex-1 rounded-xl border border-cyan-400/40 bg-gradient-to-r from-cyan-500/20 to-blue-500/20 py-3 text-sm font-bold text-cyan-200 transition-all hover:scale-[1.02] hover:bg-cyan-500/30 active:scale-95 shadow-md shadow-cyan-500/10"
              >
                Single Pull (1,200 Cash)
              </button>
              <button
                onClick={handleTenPull}
                className="flex-1 rounded-xl bg-gradient-to-r from-cyan-500 via-blue-600 to-purple-600 py-3 text-sm font-bold text-white shadow-lg shadow-cyan-500/25 transition-all hover:scale-[1.02] hover:shadow-cyan-500/40 active:scale-95"
              >
                10-Pull Bundle (10,000 Cash)
              </button>
            </div>

            {/* Pull Result Display Toast */}
            {lastPullResult && (
              <div className="mt-4 animate-fade-in rounded-xl border border-amber-500/30 bg-amber-500/10 p-3.5 text-center text-xs font-bold text-amber-300 shadow-md">
                {lastPullResult}
              </div>
            )}
          </div>

          {/* Spark Mileage Exchange Panel */}
          <div className="rounded-2xl border border-white/10 bg-slate-900/60 p-6 backdrop-blur-md lg:col-span-5 flex flex-col justify-between">
            <div>
              <h3 className="text-lg font-bold text-white mb-1">Spark Mileage Exchange</h3>
              <p className="text-xs text-slate-400 mb-4">
                Every Ice Burner pull awards 1 Mileage Token. Redeem tokens for guaranteed items:
              </p>
              <div className="space-y-2.5">
                {[
                  { cost: 30, item: 'Magic Amulet Lv.8 (+8 Guaranteed)' },
                  { cost: 50, item: 'Magic Amulet Lv.9 / Rare Accessory Box' },
                  { cost: 80, item: 'Magic Amulet Lv.10 / Rare Wearable Box' },
                  { cost: 120, item: 'Magic Amulet Lv.11 / Archangel Set Box' },
                  { cost: 200, item: 'Magic Amulet Lv.12 (Mythic Weapon Core)' },
                ].map((tier) => (
                  <div key={tier.cost} className="flex items-center justify-between rounded-xl border border-white/5 bg-white/5 p-2.5 text-xs transition-colors hover:border-white/10">
                    <div>
                      <span className="font-bold text-amber-400">{tier.cost} Tokens</span>
                      <p className="text-slate-300 font-medium">{tier.item}</p>
                    </div>
                    <button
                      disabled={mileageTokens < tier.cost}
                      className={`rounded-lg px-3 py-1.5 text-[11px] font-bold transition-all ${
                        mileageTokens >= tier.cost
                          ? 'bg-amber-500 text-slate-950 hover:bg-amber-400 shadow-sm'
                          : 'bg-slate-800 text-slate-500 cursor-not-allowed'
                      }`}
                    >
                      Redeem
                    </button>
                  </div>
                ))}
              </div>
            </div>
            <p className="mt-4 text-[11px] text-slate-500 text-center">
              Mileage Tokens persist across featured banners and never expire.
            </p>
          </div>
        </div>
      )}

      {/* TAB CONTENT 2: 2X TOP-UP STORE */}
      {activeTab === 'topup' && (
        <div>
          <div className="mb-6 rounded-xl border border-cyan-500/30 bg-cyan-500/10 p-4 text-xs text-cyan-200 flex items-center justify-between flex-wrap gap-2">
            <div>
              <span className="font-bold">★ Modern Gacha First-Topup Standard:</span> Every account receives 100% double Cash on their first purchase of each top-up tier! Resets annually during Anniversary events.
            </div>
            <span className="rounded-full bg-cyan-500/20 px-3 py-1 text-[11px] font-extrabold uppercase text-cyan-300 border border-cyan-500/40">
              Seamless Instant Credit
            </span>
          </div>

          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {TOPUP_TIERS.map((tier) => {
              const isClaimed = claimedTiers[tier.id];
              return (
                <div
                  key={tier.id}
                  className={`relative flex flex-col justify-between overflow-hidden rounded-2xl border p-5 transition-all ${
                    tier.bestValue
                      ? 'border-amber-500/50 bg-gradient-to-b from-amber-500/15 via-slate-900 to-slate-950 shadow-lg shadow-amber-500/10'
                      : tier.popular
                      ? 'border-cyan-500/40 bg-gradient-to-b from-cyan-500/10 via-slate-900 to-slate-950'
                      : 'border-white/10 bg-slate-900/60 hover:border-white/20'
                  }`}
                >
                  {!isClaimed ? (
                    <span className="absolute top-3 right-3 rounded-full bg-gradient-to-r from-amber-500 to-rose-500 px-2.5 py-0.5 text-[10px] font-black uppercase text-slate-950 shadow-md">
                      2x FIRST BONUS
                    </span>
                  ) : tier.bestValue ? (
                    <span className="absolute top-3 right-3 rounded-full bg-amber-500/20 border border-amber-500/40 px-2.5 py-0.5 text-[10px] font-black uppercase text-amber-300">
                      BEST VALUE
                    </span>
                  ) : tier.popular ? (
                    <span className="absolute top-3 right-3 rounded-full bg-cyan-500/20 border border-cyan-500/40 px-2.5 py-0.5 text-[10px] font-black uppercase text-cyan-300">
                      POPULAR
                    </span>
                  ) : null}

                  <div>
                    <h4 className="text-base font-bold text-white">{tier.name}</h4>
                    <p className="mt-1 text-2xl font-black text-amber-400">{tier.usd}</p>
                    <div className="mt-4 space-y-1 text-xs">
                      <div className="flex justify-between text-slate-300">
                        <span>Base Cash:</span>
                        <span className="font-semibold">{tier.baseCash.toLocaleString()}</span>
                      </div>
                      <div className="flex justify-between text-cyan-400">
                        <span>First Purchase Bonus:</span>
                        <span className="font-bold">{isClaimed ? '+0' : `+${tier.bonusCash.toLocaleString()}`}</span>
                      </div>
                      <div className="border-t border-white/10 pt-1.5 flex justify-between font-bold text-white text-sm">
                        <span>Total Yield:</span>
                        <span className="text-amber-300">
                          {(tier.baseCash + (isClaimed ? 0 : tier.bonusCash)).toLocaleString()} Cash
                        </span>
                      </div>
                    </div>
                  </div>

                  <button
                    onClick={() => handleSimulateTopUp(tier.id)}
                    className={`mt-5 w-full rounded-xl py-2.5 text-xs font-bold transition-all ${
                      isClaimed
                        ? 'bg-slate-800 text-slate-300 hover:bg-slate-700'
                        : 'bg-gradient-to-r from-amber-500 to-rose-500 text-slate-950 shadow-lg shadow-amber-500/20 hover:scale-[1.02] active:scale-95'
                    }`}
                  >
                    {isClaimed ? 'Standard Top-Up Ready' : 'Claim 2x Cash Bonus'}
                  </button>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* TAB CONTENT 3: MONTHLY EXPRESS SUPPLY PASS */}
      {activeTab === 'monthly' && (
        <div className="relative overflow-hidden rounded-2xl border border-amber-500/40 bg-gradient-to-br from-amber-950/30 via-slate-900 to-slate-950 p-6 md:p-8">
          <div className="grid gap-6 md:grid-cols-12 items-center">
            <div className="md:col-span-7 space-y-3">
              <span className="rounded-full bg-amber-500/20 border border-amber-500/40 px-3 py-1 text-xs font-black uppercase text-amber-300 tracking-wider">
                👑 30-Day Express Supply Pass
              </span>
              <h3 className="text-2xl font-extrabold text-white md:text-3xl">
                Paragon Monthly Express Supply Stipend
              </h3>
              <p className="text-sm text-slate-300">
                Unlock 400% ROI Value! Receive <span className="font-bold text-amber-400">3,000 Cash Upfront</span> upon activation + <span className="font-bold text-cyan-300">300 Cash Daily</span> for 30 days (12,000 Total Cash Value) plus <span className="font-bold text-emerald-400">5M ED daily bonus</span>!
              </p>
              <div className="pt-2 flex flex-wrap gap-4 text-xs font-semibold text-slate-300">
                <div className="flex items-center gap-2">
                  <span className="h-2 w-2 rounded-full bg-emerald-400" />
                  Active Days Left: <span className="text-white font-bold">{monthlyPassDays} Days</span>
                </div>
                <div className="flex items-center gap-2">
                  <span className="h-2 w-2 rounded-full bg-cyan-400" />
                  Today's Status: <span className={monthlyClaimedToday ? 'text-emerald-400 font-bold' : 'text-amber-400 font-bold'}>
                    {monthlyClaimedToday ? '✓ Claimed Today' : '⚡ Ready to Claim'}
                  </span>
                </div>
              </div>
            </div>

            <div className="md:col-span-5 flex flex-col items-center justify-center rounded-2xl border border-white/10 bg-white/5 p-6 backdrop-blur-md text-center">
              <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">Monthly Pass Value</span>
              <span className="mt-1 text-3xl font-black text-amber-400">$4.99 / 3,000 Cash</span>
              <span className="mt-1 text-xs text-emerald-300 font-bold">Yields 12,000 Cash Total (400% ROI)</span>

              <button
                onClick={handleClaimMonthlyPass}
                disabled={monthlyClaimedToday}
                className={`mt-5 w-full rounded-xl py-3 text-sm font-bold transition-all ${
                  monthlyClaimedToday
                    ? 'bg-slate-800 text-slate-500 cursor-not-allowed border border-white/5'
                    : 'bg-gradient-to-r from-amber-500 via-rose-500 to-purple-600 text-slate-950 shadow-lg shadow-amber-500/25 hover:scale-[1.02] active:scale-95'
                }`}
              >
                {monthlyClaimedToday ? 'Stipend Claimed Today' : 'Claim Today\'s 300 Cash + 5M ED'}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* TAB CONTENT 4: STARLIGHT CASHBACK */}
      {activeTab === 'starlight' && (
        <div>
          <div className="mb-6 flex flex-col justify-between gap-4 rounded-2xl border border-purple-500/30 bg-purple-500/10 p-5 backdrop-blur-md md:flex-row md:items-center">
            <div>
              <span className="text-xs font-bold text-purple-300 uppercase tracking-wider">Starlight Cashback Balance</span>
              <h3 className="text-2xl font-black text-white">{starlightBalance.toLocaleString()} Starlight Tokens</h3>
              <p className="text-xs text-slate-400">Earn 10% Cashback in Starlight Tokens on all Cash Shop spending automatically!</p>
            </div>
            <span className="rounded-xl border border-purple-500/30 bg-purple-600/20 px-4 py-2 text-xs font-bold text-purple-200">
              Automatic 10% Rebate Active
            </span>
          </div>

          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
            {STARLIGHT_REDEEM_ITEMS.map((item, i) => (
              <div key={i} className="flex flex-col justify-between rounded-2xl border border-white/10 bg-slate-900/60 p-4 backdrop-blur-md">
                <div>
                  <span className="text-[10px] font-bold uppercase text-cyan-400">{item.type}</span>
                  <h4 className="mt-1 text-sm font-bold text-white">{item.name}</h4>
                  <p className="mt-3 text-lg font-black text-amber-400">{item.cost} Tokens</p>
                </div>
                <button
                  onClick={() => handleClaimStarlight(item, i)}
                  disabled={starlightBalance < item.cost}
                  className={`mt-4 w-full rounded-xl py-2 text-xs font-bold transition-all ${
                    starlightBalance >= item.cost
                      ? 'bg-purple-600 text-white hover:bg-purple-500 shadow-md shadow-purple-600/30 hover:scale-[1.02] active:scale-95'
                      : 'bg-slate-800 text-slate-500 cursor-not-allowed'
                  }`}
                >
                  Claim Reward
                </button>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB CONTENT 5: GROWTH BUNDLES */}
      {activeTab === 'bundles' && (
        <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {FEATURED_BUNDLES.map((bundle, idx) => (
            <div key={idx} className={`relative flex flex-col justify-between overflow-hidden rounded-2xl border border-white/10 bg-gradient-to-b ${bundle.gradient} p-6 backdrop-blur-md`}>
              <div>
                <span className={`inline-block rounded-full px-3 py-0.5 text-[11px] font-black uppercase border ${bundle.badgeColor}`}>
                  {bundle.discount}
                </span>
                <h3 className="mt-3 text-base font-bold text-white">{bundle.title}</h3>
                <p className="mt-1 text-xl font-extrabold text-amber-400">{bundle.price.toLocaleString()} Cash</p>
                <ul className="mt-4 space-y-2 text-xs text-slate-300">
                  {bundle.items.map((item, i) => (
                    <li key={i} className="flex items-center gap-2">
                      <span className="text-cyan-400 font-bold">✓</span> {item}
                    </li>
                  ))}
                </ul>
              </div>
              <button
                onClick={() => handlePurchaseBundle(idx)}
                className="mt-6 w-full rounded-xl bg-gradient-to-r from-cyan-500 via-blue-600 to-purple-600 py-2.5 text-xs font-bold text-white shadow-lg transition-all hover:scale-[1.02] active:scale-95 shadow-cyan-500/20"
              >
                Purchase Package
              </button>
            </div>
          ))}
        </div>
      )}

      {/* TAB CONTENT 6: VIP 15 SYSTEM */}
      {activeTab === 'vip' && (
        <div>
          <p className="mb-4 text-xs text-slate-400">
            Cumulative loyalty unlocks progressive VIP 1 through VIP 15 privileges, granting monthly ED rewards, free daily Ice Burners, Magic Amulet boxes, and up to 25% Market Fee Discounts:
          </p>
          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-5">
            {VIP_REWARDS.map((vip) => (
              <div key={vip.tier} className="flex flex-col justify-between rounded-xl border border-white/10 bg-slate-900/60 p-3 text-xs text-slate-300 transition-all hover:border-white/20">
                <div>
                  <div className="flex justify-between items-center">
                    <span className="font-extrabold text-amber-400">VIP Tier {vip.tier}</span>
                    <span className="text-[10px] font-bold text-emerald-400 bg-emerald-500/10 px-1.5 py-0.5 rounded border border-emerald-500/20">{vip.discount}</span>
                  </div>
                  <p className="font-semibold text-white mt-1">{vip.ed}</p>
                  <p className="text-[11px] text-cyan-300">{vip.burners}x Ice Burners</p>
                  {vip.amulet !== 'None' && <p className="text-[11px] text-purple-400 font-bold">{vip.amulet}</p>}
                </div>
                <button
                  onClick={() => handleClaimVipTier(vip.tier)}
                  className="mt-3 w-full rounded-lg bg-amber-500/20 py-1 text-[11px] font-bold text-amber-300 border border-amber-500/30 hover:bg-amber-500/30 transition-colors"
                >
                  Claim VIP {vip.tier}
                </button>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB CONTENT 7: BATTLE PASS */}
      {activeTab === 'battlepass' && (
        <div className="rounded-2xl border border-white/10 bg-slate-900/60 p-6">
          <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
            <div>
              <h3 className="text-lg font-bold text-white">50-Tier Paragon Battle Pass</h3>
              <p className="text-xs text-slate-400">Progress through tiers to unlock ED, Ice Burners, and Magic Amulet Lv.12</p>
            </div>
            <div className="flex gap-2">
              <button
                onClick={() => handleClaimBattlePass(20)}
                className="rounded-lg bg-cyan-500/20 px-3 py-1.5 text-xs font-bold text-cyan-300 border border-cyan-500/30 hover:bg-cyan-500/30 transition-colors"
              >
                Claim Tier 20
              </button>
              <button
                onClick={() => handleClaimBattlePass(50)}
                className="rounded-lg bg-amber-500/20 px-3 py-1.5 text-xs font-bold text-amber-300 border border-amber-500/30 hover:bg-amber-500/30 transition-colors"
              >
                Claim Max Tier 50
              </button>
            </div>
          </div>
          <div className="h-3 rounded-full bg-slate-800 overflow-hidden">
            <div className="h-full w-2/5 bg-gradient-to-r from-cyan-500 via-blue-500 to-amber-500 transition-all duration-500" />
          </div>
          <p className="mt-2 text-right text-xs text-slate-400 font-semibold">Tier 20 / 50 Completed</p>
        </div>
      )}
    </section>
  );
};
